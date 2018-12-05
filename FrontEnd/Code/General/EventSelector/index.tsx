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
}

const EventSelector: React.StatelessComponent<EventSelectorProps> = (props) => {
    return (
        <div style={{fontSize: "1.3rem"}}>
            Estas pasando lista actualmente de: 
            <br />
            <b style={{fontFamily: "Raleway", fontSize: "1.4rem"}}>
                {props.EventData[props.currentEventIndex].EventName}
            </b>
            <br />
            <i 
                onClick   = {() => {}}
                className = "unSelectable small material-icons">
                edit
            </i>
            <br />
        </div>
    ) 
}

export default EventSelector