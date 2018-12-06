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
        if (!text) return
        const toSend = {data: text, EventID: this.state.EventData![this.state.currentEvent].EventID}

        sentData("http://localhost/getData.php?GetGuestLike=", toSend)
        .then (response => response.json())
            .then ( (personData: Array<PersonData>) => {
                if (personData.length === 1)
                   this.setState({currentScreen: "Confirm"})
                else if (personData.length === 0) {
                    M.toast({html: "Error: No hay personas con esta información",  displayLength: 3000})
                    this.setState({personData: []})
                    return
                }
                
                this.setState({personData: (personData.length > 0)? personData : []})
            })
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

        if ((this.state.currentScreen == 'GetData' || this.state.currentScreen == 'QR') && this.state.personData && this.state.personData.length > 1) 
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
                <div>
                    <h5>¿Seguro de pasar lista a {this.state.personData![0].Name} {this.state.personData![0].FirstSurname}?</h5>

                    <p>
                        Alguna duda:
                    </p>
                    <div className="row">
                        <div className="input-field col s12 m10 offset-m1 l6 offset-l3">
                            <textarea id="textarea1" className="materialize-textarea"></textarea>
                            <label htmlFor="textarea1">Dudas:</label>
                        </div>
                    </div>

                    <a 
                        className="btn-large red"
                        onClick={() => this.setState({currentScreen: "GetData"})}>
                        Regresar
                    </a>
                    
                </div>    
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