import React from 'react'
import {sentData} from "../../General/GeneralFunctions"
import EventSelector, {EventData} from "../../General/EventSelector"
import QrReader from "react-qr-reader";

interface PersonData {
    RFC: number, 
    Name: string, 
    FirstSurname: string,
    SecondSurname: string, 
    Email: string, 
    PlaceName: string
}

interface CheckInState {
    EventData: EventData[] | null,
    currentEvent: number,
    currentScreen: 'QR' | 'GetData' | 'Confirm'
    personData?: Array<PersonData>
}

interface CheckInProps {

}

export default class CheckIn extends React.Component<CheckInProps, CheckInState> {

    constructor(props) {
        super(props)

        this.state = {
            EventData: null,
            currentEvent: 0,
            currentScreen: 'GetData',
        }
    }

    componentDidMount() {
        sentData("http://localhost/getData.php?GetEventData=", {})
            .then (response => response.json())
            .then ( (response: EventData[]) => this.setState({EventData: response}) )
    }

    handleDataInput(text: string | null) {
        console.log(text)
        if (!text) return
        const toSend = {data: text, EventID: this.state.EventData![this.state.currentEvent].EventID}

        sentData("http://localhost/getData.php?GetGuestLike=", toSend)
            .then (response => response.json())
            .then ( (personData: Array<PersonData>) => {
                if (personData.length === 1)
                   this.setState({currentScreen: "Confirm", personData: personData})
                else if (personData.length === 0) {
                    M.toast({html: "Error: No hay personas con esta información",  displayLength: 3000})
                    this.setState({personData: []})
                    return
                }
                else this.setState({personData: personData})
            })
    }


    SetAssistance(seat: number, representant: string | null) {
        

        const toSend = {seat, representant, RFC: this.state.personData![0], EventID: this.state.EventData![this.state.currentEvent]}
        sentData("http://localhost/getData.php?SetAssistance=", toSend)
        .then (response => response.text() )
        .then (response => console.log(response))
        //.then (response => response.json())
        //.then (response => M.toast({html: response['message']}))

    }

    render () {
        const EventSelectorView = 
            this.state.EventData == null? 
            <React.Fragment>
                <h5>Cargando Eventos</h5>
                <div className="progress" style={{width: "50%", display: "inline-block"}}>
                    <div className="indeterminate"></div>
                </div>
            </React.Fragment>
            : 
            <EventSelector
                onChangeIndex     = {(index) => this.setState({currentEvent: index, personData: []})} 
                EventData         = {this.state.EventData!} 
                currentEventIndex = {this.state.currentEvent}
                text              = {"Estas pasando lista actualmente de: "}
                editable          = {this.state.currentScreen != "Confirm"}
            />


        let currentScreen: JSX.Element = <span />

        if (this.state.currentScreen == 'GetData') 
            currentScreen = (
                <React.Fragment>
                    <div className="row">
                        <div className="col s12 m10 offset-m1 l6 offset-l3">
                        <div 
                            className = "card-panel indigo hoverable white-text valign-wrapper"
                            onClick   = {() => this.setState({currentScreen: 'QR'})}
                        >
                            <i className="material-icons left">camera_alt</i>
                            <span style={{fontSize: "1.45rem"}}>
                                PASAR LISTA USANDO QR
                            </span>
                        </div>
                        </div>
                    </div>
                    <form className="row">
                        <div className="col s12 m10 offset-m1 l6 offset-l3">
                            <div className="card" style={{backgroundColor: "#f2f1f1"}}>
                                <div className="card-content blue-grey-text text-darken-4">
                                    
                                    <p style={{fontSize: "1.2rem"}}>
                                        Puedes pasar lista con el código de barras,
                                        nombre o RFC del invitado
                                    </p>

                                    <br />

                                    <div className="row white-text">
                                        <div className="input-field col s12 m8 offset-m2">
                                            <input 
                                                id        ="dataInput" 
                                                type      = "text"
                                                className = "validate"
                                                required  = {true}
                                                style     = {{fontSize: "1.5rem"}}/>
                                            <label htmlFor="dataInput">Nombre / RFC</label>
                                        </div>
                                    </div>

                                    <button 
                                        type      = "submit"
                                        className = "btn-floating btn-large green lighten-1 waves-effect"
                                        onClick   =  {(e) => {
                                            //@ts-ignore
                                            const text = document.getElementById('dataInput').value as string
                                            if (text == '') return
                                            else this.handleDataInput(text)

                                            e.preventDefault()
                                        }}
                                    >
                                        <i className="material-icons">arrow_forward</i>
                                    </button>
                                
                                </div>
                            </div>
                        </div>
                    </form>
                </React.Fragment>
            )
        else if (this.state.currentScreen == 'QR') 
            currentScreen = (
                <div className="center">
                    <QrReader
                        delay     = {600}
                        onScan    = {(e) => this.handleDataInput(e)}
                        onError   = {(e) => console.log(e)}
                        style     = {{width: "80%", display: "inline-block"}}
                        className = "z-depth-3"
                    />

                    <br />
                    <br />

                    <a 
                        className="btn-large red"
                        onClick={() => this.setState({currentScreen: "GetData"})}>
                        Regresar
                    </a>
                    
                </div>
            )

        if (
            (this.state.currentScreen == 'GetData' || this.state.currentScreen == 'QR') 
            && this.state.personData && this.state.personData.length > 1
        ) 
            currentScreen = (
                <React.Fragment>
                    {currentScreen}
                    {
                        this.state.personData.map( personData => (
                            <div className="row" key={personData.RFC}>
                                <div className="col s12 m10 offset-m1 l6 offset-l3">
                                    <div className = "card-panel hoverable blue-grey-text text-darken-3">
                                        <div className="left-align row">
                                            <ul className="browser-default" style={{fontSize: "1.4rem", width: "100%"}}>
                                                <li>
                                                    <b>ID: </b> {personData.RFC}
                                                </li>
                                                <li>
                                                    <b>Nombre: </b> 
                                                    {personData.SecondSurname}
                                                    &nbsp;
                                                    {personData.FirstSurname}
                                                    &nbsp;
                                                    {personData.Name}
                                                </li>
                                                <li>
                                                    <b>De: </b> 
                                                    {personData.PlaceName}
                                                </li>
                                            </ul>
                                        </div>
                                        
                                        <br />
    
                                        <div className="row">
                                            <a className="waves-effect waves-light btn" onClick={() => this.setState({currentScreen: "Confirm", personData: [personData]})}>
                                                Pasar lista
                                            </a>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        )) 
                    }
                </React.Fragment>
            )

        if (this.state.currentScreen == 'Confirm') 
            currentScreen = (
                <form onSubmit={(e) => {
                    //@ts-ignore
                    const seat = Number(e.currentTarget.elements[0].value), representant = e.currentTarget.elements[1].value
                    this.setState(() => {
                        this.SetAssistance(seat, representant)
                        return {currentScreen: "GetData"}
                    })
                    e.preventDefault();
                }}>
                    <h5>
                        ¿Seguro de pasar lista a &nbsp;
                        {this.state.personData![0].Name} {this.state.personData![0].FirstSurname} {this.state.personData![0].SecondSurname}?
                    </h5>
    
                    <div className="row white-text container">
                        <div className="input-field col s12 m6">
                            <input 
                                id        ="seatInput" 
                                name      ="seatInput" 
                                type      = "number"
                                className = "validate"
                                style     = {{fontSize: "1.5rem"}}/>
                            <label htmlFor="dataInput">Asiento Especial (si requiere)</label>
                        </div>
                        <div className="input-field col s12 m6">
                            <input 
                                id        ="representantInput" 
                                name      ="seatInput" 
                                type      = "text"
                                className = "validate"
                                style     = {{fontSize: "1.5rem"}}/>
                            <label htmlFor="dataInput">Representante (si existe)</label>
                        </div>
                    </div>

                    <div className="row container">
                        <button className="col s5 btn-large green" type="submit"> Pasar lista </button>
                        <span className="col s1" />
                        <button
                            className = "col s5 btn-large red"
                            onClick   = {() => this.setState({currentScreen: "GetData"})}>
                            Regresar
                        </button>
                    </div>

                    

                </form>    
            )   

        

        

        return (
            <div className="center">
                <h4>Pasar Lista</h4>
                <br />
                <br />

                <div className="container">
                    {EventSelectorView}
                </div>

                <br />
                <br />
                <br />

                {currentScreen}
            </div>
        )
    }
}