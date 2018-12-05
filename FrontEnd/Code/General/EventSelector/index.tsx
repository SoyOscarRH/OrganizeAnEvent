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
        <div>
            Estas pasando lista actualmente de {props.EventData[props.currentEventIndex]}
        </div>
    ) 
}

export default EventSelector