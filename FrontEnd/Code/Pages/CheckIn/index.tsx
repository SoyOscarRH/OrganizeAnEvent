import React from 'react'
import {sentData} from "../../General/GeneralFunctions"
import EventSelector, {EventData} from "../../General/EventSelector"
import QrReader from "react-qr-reader";


interface PersonData {
    GuestRFC: number, 
    GuestName: string, 
    GuestFirstSurname: string,
    GuestSecondSurname: string, 
    GuestEmail: string, 
    PlaceName: string
}

interface CheckInState {
    EventData: EventData[] | null,
    currentEvent: number,
    isShowingQR: boolean
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
            isShowingQR: false,
        }
    }

    componentDidMount() {
        sentData("http://localhost/getData.php?GetEventData=", {})
            .then (response => response.json())
            .then ( (response: EventData[]) => this.setState({EventData: response}) )
    }

    handleDataInput(text: string | null) {
        if (!text) return
        console.log(text)

        sentData("http://localhost/getData.php?GetGuestLike=", {data: text})
            .then (response => response.json())
            .then ( (personData: Array<PersonData>) => {
                if (personData.length === 1)
                    M.toast({
                        html: `Se paso lista para ${personData[0].GuestName} ${personData[0].GuestFirstSurname} ${personData[0].GuestSecondSurname}`,
                        displayLength: 3000,
                    })
                else if (personData.length === 0)
                    M.toast({html: "Error: No hay personas con esta información",  displayLength: 3000})
                else this.setState({personData: personData})
            })
    }

    renderQR () {

        return (
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
                    onClick={() => this.setState({isShowingQR: false})}>
                    Regresar
                </a>
                
            </div>
        )
        
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
                onChangeIndex     = {(index) => this.setState({currentEvent: index})} 
                EventData         = {this.state.EventData!} 
                currentEventIndex = {this.state.currentEvent}
            />

        return (
            <div className="center">
                <h4>Pasar Lista</h4>
                <br />
                <br />

                <div className="container"> {EventSelectorView} </div>

                <br />
                <br />
                <br />

                {
                    this.state.isShowingQR? this.renderQR() : (
                        <React.Fragment>
                            <div className="row">
                                <div className="col s12 m10 offset-m1 l6 offset-l3">
                                <div 
                                    className = "card-panel indigo hoverable white-text valign-wrapper"
                                    onClick   = {() => this.setState({isShowingQR: true})}
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
                }

                {
                    (this.state.personData != null)? this.state.personData.map( personData => (
                        <div className="row">
                            <div className="col s12 m10 offset-m1 l6 offset-l3">
                                <div className = "card-panel hoverable white-text valign-wrapper">
                                    <ul className="browser-default">
                                        <li>
                                            <b>ID:</b> {personData.GuestRFC}
                                        </li>
                                        <li>
                                            <b>Nombre:</b> 
                                            {personData.GuestSecondSurname}
                                            {personData.GuestFirstSurname}
                                            {personData.GuestName}
                                        </li>
                                    </ul>

                                    <a className="waves-effect waves-light btn">
                                        Pasar lista
                                    </a>
                                </div>
                            </div>
                        </div>
                    )) 
                    : <span />
                }

            </div>
        )
    }
}