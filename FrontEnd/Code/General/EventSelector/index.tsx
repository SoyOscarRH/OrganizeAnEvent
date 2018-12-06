import React from 'react'


export interface EventData {
    Description?: string | null,
    EventID: number,
    EventName: string,
    InstitutionName: string,
    Latitude: null | number,
    Localization: null | number,
    Longitude: null | number,
    Time: null | number,
}

interface EventSelectorProps {
    EventData: EventData[],
    currentEventIndex: number,
    onChangeIndex: (index: number) => void
}

interface EventSelectorState { 
    isSelectingEvent: boolean,
}

class EventSelector extends React.Component<EventSelectorProps, EventSelectorState> {

    constructor(props) {
        super(props)

        this.state = {
            isSelectingEvent: false,
        }
    }

    renderSelector () {
        
        setTimeout(() => {
            const elements = document.querySelectorAll('.collapsible')
            M.Collapsible.init(elements, {})
        }, 300)

        return (
            <div style={{fontSize: "1.3rem"}}>
                <ul className="collapsible">

                    {
                        this.props.EventData.map( (eventData, index) => (
                            <li key={eventData.EventID}>
                                <div className="collapsible-header">
                                    <i className="material-icons">assignment</i>
                                    {eventData.EventName}
                                </div>
                                <div className="collapsible-body" style={{fontSize: "0.9rem", textAlign: "justify"}}>
                                    <p>
                                        {eventData.Description}
                                    </p>
                                    <p>
                                        {eventData.InstitutionName}
                                    </p>

                                    <div className="center">
                                        <a 
                                            onClick   = {() => this.props.onChangeIndex(index)}
                                            className = {`white-text green btn-flat ${index === this.props.currentEventIndex? "disabled" : ""} `}>
                                            Cambiar
                                        </a>
                                    </div>
                                </div>
                            </li>
                        )) 
                    }
                </ul>

                <i 
                    onClick   = {() => this.setState({isSelectingEvent: false})}
                    style     = {{cursor: "pointer"}}
                    className = "small material-icons">
                    chevron_left
                </i>
                
            </div>
        )
    }

    renderCurrentEvent () {
        return (
            <div style={{fontSize: "1.3rem"}}>
                Estas pasando lista actualmente de: 
                <br />
                <b style={{fontFamily: "Raleway", fontSize: "1.4rem"}}>
                    {this.props.EventData[this.props.currentEventIndex].EventName}
                </b>
                <br />
                <i 
                    onClick   = {() => this.setState({isSelectingEvent: true})}
                    style     = {{cursor: "pointer"}}
                    className = "small material-icons">
                    edit
                </i>
                <br />
            </div>
        ) 
    }

    render() {
        return this.state.isSelectingEvent? this.renderSelector() : this.renderCurrentEvent()
    }
    
}

export default EventSelector