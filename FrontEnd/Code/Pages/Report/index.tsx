import React from "react"
import EventSelector, {EventData} from "../../General/EventSelector"
import {sentData} from "../../General/GeneralFunctions"

interface ReportState {
    EventData: EventData[] | null,
    currentEvent: number,
}

interface ReportProps {
}

export default class Report extends React.Component<ReportProps, ReportState> {

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

    open() {
        M.toast({html: "Generandolos en una nueva pestañana, NO CERRAR"})
        window.open('/graphic.php', '_blank');
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
                text              = {"Estas pasando sacando reconocimientos de: "}
                editable          = {true}
            />

        return (
            <div className="center">
            
                <div className="container"  style={{fontSize: "1.9rem"}}>
                    {EventSelectorView}

                    <br />
                    <div className="row">
                        <a onClick={() => this.open()} className="btn-large col s12"> Generar PDF</a>
                    </div>
                </div>
            </div>
        )
    }
}