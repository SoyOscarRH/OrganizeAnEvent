import React from 'react'
import {sentData} from "../../General/GeneralFunctions"
import EventSelector, {EventData} from "../../General/EventSelector"

interface CheckInState {
    EventData: EventData[] | null,
    currentEvent: number,
}

interface CheckInProps {
}

export default class CheckIn extends React.Component<CheckInProps, CheckInState> {

    constructor(props) {
        super(props)

        this.state = {
            EventData: null,
            currentEvent: 0,
        }
    }

    componentDidMount() {
        sentData("http://localhost/getData.php?GetEventData=", {})
            .then (response => response.json())
            .then ( (response: EventData[]) => this.setState({EventData: response}) )
    }

    handleDataInput(text: string) {
        console.log(text)
    }

    render () {
        return (
            <div className="center">
                <h4>Pasar Lista</h4>
                <br />
                <br />

                <div className="container">
                    {
                        this.state.EventData == null? 
                        <React.Fragment>
                            <h5>Cargando Eventos</h5>
                            <div className="progress" style={{width: "50%", display: "inline-block"}}>
                                <div className="indeterminate"></div>
                            </div>
                        </React.Fragment>
                        : 
                        <EventSelector 
                            EventData         = {this.state.EventData!} 
                            currentEventIndex = {this.state.currentEvent}
                        />
                    }
                </div>
                <br />
                <br />
                <br />

                <div className="row">
                    <div className="col s12 m10 offset-m1 l6 offset-l3">
                    <div className="card-panel indigo hoverable white-text valign-wrapper">
                        <i className="medium unSelectable material-icons left">camera_alt</i>
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
                                        <label htmlFor="dataInput">Email</label>
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
                                    <i className="unSelectable material-icons">arrow_forward</i>
                                </button>
                            
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        )
    }
}