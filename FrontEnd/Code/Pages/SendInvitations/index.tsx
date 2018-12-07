import React from "react"
import EventSelector, {EventData} from "../../General/EventSelector"
import {sentData} from "../../General/GeneralFunctions"

interface SendInvitationsState {
    EventData: EventData[] | null,
    currentEvent: number,
    PeopleInvitationData: Array<PeopleInvitationData>
    startIndex: number,
}

interface SendInvitationsProps {
}

interface PeopleInvitationData {
    RFC: string,
    FullName: string,
    checked: boolean,
}

export default class SendInvitations extends React.Component<SendInvitationsProps, SendInvitationsState> {

    constructor(props) {
        super(props)

        this.state = {
            EventData: null,
            currentEvent: 0,
            PeopleInvitationData: [],
            startIndex: 0
        }

    }


    componentDidMount() {
        sentData("http://localhost/getData.php?GetEventData=", {})
            .then (response => response.json())
            .then ( (response: EventData[]) => this.setState({EventData: response}) )

    }

    getAllGuestsFromEvent() {
        sentData("http://localhost/getData.php?GetGuestList=", {EventID: this.state.EventData![this.state.currentEvent].EventID})
        .then (response => response.json())
        .then ( (response) => this.setState({PeopleInvitationData: response.map(e => ({...e, checked: false}) )}) )
    }

    render () {

        if (this.state.EventData != null && this.state.PeopleInvitationData.length == 0) this.getAllGuestsFromEvent() 
        
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


        const toShow = this.state.PeopleInvitationData.length == 0?
        (
            <div className="progress" style={{width: "50%", display: "inline-block"}}>
                <div className="indeterminate"></div>
            </div>
        )
        :
        (
            <form className="left-align container">

                <a className="btn" onClick={ () => {
                    this.setState(preState => {
                        const nextValue = this.state.PeopleInvitationData[0].checked
                        preState.PeopleInvitationData.forEach(people => people.checked = !nextValue)
                        return {PeopleInvitationData: preState.PeopleInvitationData}
                    })
                }}>
                    Todos
                </a>

                {
                    this.state.PeopleInvitationData.slice(this.state.startIndex, this.state.startIndex + 50).map( (people, index) => (
                        <p key={people.RFC}>
                            <label>
                                <input 
                                    type="checkbox" 
                                    checked={people.checked} 
                                    onChange={ () => this.setState(
                                        (preState) => {
                                            const realIndex = index + this.state.startIndex
                                            preState.PeopleInvitationData[realIndex].checked = !preState.PeopleInvitationData[realIndex].checked 
                                            console.log(preState.PeopleInvitationData[realIndex])

                                            return {PeopleInvitationData: preState.PeopleInvitationData}
                                        }
                                    )}
                                />
                                <span>
                                    {index + this.state.startIndex} - <b>{people.RFC}:</b> {people.FullName}
                                </span>
                            </label>
                        </p>
                    ))
                }

                <a 
                    className="btn"
                    onClick={() => this.setState(preState => {
                        let current = preState.startIndex - 50
                        if (current < 0) current = 0

                        return {startIndex: current}
                    })}
                >
                    Anterior
                </a>
                &nbsp;
                <a 
                    className="btn"
                    onClick={() => this.setState(preState => {
                        let current = preState.startIndex + 50
                        if (current >= preState.PeopleInvitationData.length) current = preState.PeopleInvitationData.length - 1

                        return {startIndex: current}
                    })}
                >
                    Siguiente
                </a>
            </form>
        )


        return (
            <div className="center">
            
                <div className="container" style={{fontSize: "1.9rem"}}>
                    {EventSelectorView}

                    <br />
                    <br />

                    {toShow}

                </div>
            </div>
        )
    }
}