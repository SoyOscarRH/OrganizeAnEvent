import React from "react"
import EventSelector, {EventData} from "../../General/EventSelector"
import {sentData} from "../../General/GeneralFunctions"

interface SendInvitationsState {
    EventData: EventData[] | null,
    currentEvent: number,
    PeopleInvitationData: Array<PeopleInvitationData>
    startIndex: number,
    currentlyWorking: boolean
}

interface SendInvitationsProps {
}

interface PeopleInvitationData {
    RFC: string,
    FullName: string,
    checked: boolean,
    Email: string
}

export default class SendInvitations extends React.Component<SendInvitationsProps, SendInvitationsState> {

    constructor(props) {
        super(props)

        this.state = {
            EventData: null,
            currentEvent: 0,
            PeopleInvitationData: [],
            startIndex: 0,
            currentlyWorking: false,
        }

    }

    sendEmail() {

        this.setState({currentlyWorking: true})
        const toSend = this.state.PeopleInvitationData.filter(people => people.checked)
        if (toSend.length == 0) {
            M.toast({html: "Error: No se seleccionaron invitados"})
            return
        }

        toSend.forEach( people => {
            sentData("http://localhost/invitationTemplate.php", {...people, EventID: this.state.EventData![this.state.currentEvent].EventID})
            .then (response => response.text())
            .then (message => {M.toast({html: message}); console.log(message) })
            .then( () => this.setState({currentlyWorking: false}))
        })
    }

    componentDidMount() {
        sentData("http://localhost/getData.php?GetEventData=", {})
            .then (response => response.json())
            .then ( (response: EventData[]) => this.setState({EventData: response}) )


        const elems = document.querySelectorAll('.fixed-action-btn')
        M.FloatingActionButton.init(elems, {})

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
                &nbsp;
                <a className="btn" onClick={ () => {
                    this.setState(preState => {
                        preState.PeopleInvitationData.forEach(people => people.checked = false)
                        return {PeopleInvitationData: preState.PeopleInvitationData}
                    })
                }}>
                    Limpiar
                </a>
                &nbsp;

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
                                    {index + this.state.startIndex} <b>{people.RFC}</b>
                                    <br />
                                    {people.FullName}
                                    <br />
                                    {people.Email}
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
            
                <div className="container" style={{fontSize: "2.2rem"}}>
                    {EventSelectorView}

                    <br />
                    <br />

                    {toShow}

                </div>

                <div className="fixed-action-btn">
                    <a className={`btn-floating btn-large red ${this.state.currentlyWorking? "disabled" : ""}`}>
                        <i className="large material-icons" onClick={() => this.sendEmail()}>send</i>
                    </a>
                </div>

            </div>
        )
    }
}