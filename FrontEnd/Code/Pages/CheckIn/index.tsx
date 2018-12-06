import React from 'react'
import {sentData} from "../../General/GeneralFunctions"
import EventSelector, {EventData} from "../../General/EventSelector"
import QrReader from "react-qr-reader";



interface CheckInState {
    EventData: EventData[] | null,
    currentEvent: number,
    isShowingQR: boolean
    personData?: {
        name: string,
        guestID: number,
    }
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
            .then ( (response) => console.log(response) )
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
                    (this.state.personData != null)? (
                        <div className="row">
                            <div className="col s12 m10 offset-m1 l6 offset-l3">
                                <div className = "card-panel indigo hoverable white-text valign-wrapper">

                                    <b>ID:</b> {this.state.personData.guestID}
                                    <b>Persona:</b> {this.state.personData.name}

                                </div>
                            </div>
                        </div>
                    ) 
                    : <span />
                }

            </div>
        )
    }
}