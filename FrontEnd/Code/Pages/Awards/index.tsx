import React from "react"
import EventSelector, {EventData} from "../../General/EventSelector"
import {sentData} from "../../General/GeneralFunctions"

interface AwardsState {
    EventData: EventData[] | null,
    currentEvent: number,
}

interface AwardsProps {
}

export default class Awards extends React.Component<AwardsProps, AwardsState> {

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

    onAskAwards() {
        M.toast({html: "Generandolos en una nueva pestañana, NO CERRAR"})
        window.open('https://www.codexworld.com', '_blank');
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
                        <a onClick={() => this.onAskAwards()} className="btn-large col s12 hide-on-small-only"> General TODOS los reconocimientos</a>
                        <a onClick={() => this.onAskAwards()} className="btn-large col s12 hide-on-med-and-up"> TODOS</a>
                    </div>
                    <div className="row">
                        <a onClick={() => this.onAskAwards()} className="btn-large col s12 hide-on-small-only">General los reconocimientos de los presentes</a>
                        <a onClick={() => this.onAskAwards()} className="btn-large col s12 hide-on-med-and-up">Solo presentes</a>
                    </div>
                </div>
            </div>
        )
    }
}