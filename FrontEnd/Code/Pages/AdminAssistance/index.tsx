import React from "react"
import EventSelector, {EventData} from "../../General/EventSelector"
import {sentData} from "../../General/GeneralFunctions"

interface AdminAssistancesState {
    EventData: EventData[] | null,
    currentEvent: number,
    PeopleAssistanceData: Array<PeopleAssistanceData>
    startIndex: number,
    currentlyWorking: boolean,
}

interface AdminAssistancesProps {
}

interface PeopleAssistanceData {
    RFC: string,
    FullName: string,
    checked: boolean,
    Email: string,
    Seat: number,
    Username: number,
    Time: any,
    Representative: string,
}

export default class AdminAssistances extends React.Component<AdminAssistancesProps, AdminAssistancesState> {

    constructor(props) {
        super(props)

        this.state = {
            EventData: null,
            currentEvent: 0,
            PeopleAssistanceData: [],
            startIndex: 0,
            currentlyWorking: false,
        }

    }

    sendEmail() {

        this.setState({currentlyWorking: true})
        const toSend = this.state.PeopleAssistanceData.filter(people => people.checked)
        if (toSend.length == 0) {
            M.toast({html: "Error: No se seleccionaron invitados"})
            return
        }

        toSend.forEach( people => {
            sentData("http://localhost/invitationTemplate.php", {...people, EventID: this.state.EventData![this.state.currentEvent].EventID})
            .then (response => response.text())
            .then (message => M.toast({html: message}))
            .then ( () => this.setState({currentlyWorking: false}) ) 
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
        .then ( (response) => this.setState({PeopleAssistanceData: response.map(e => ({...e, checked: false}) )}) )
    }

    render () {

        if (this.state.EventData != null && this.state.PeopleAssistanceData.length == 0) this.getAllGuestsFromEvent() 
        
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


        const toShow = this.state.PeopleAssistanceData.length == 0?
        (
            <div className="progress" style={{width: "50%", display: "inline-block"}}>
                <div className="indeterminate"></div>
            </div>
        )
        :
        (
            <form className="left-align container">
                <table className="responsive">
                    <thead>
                        <tr>
                            <th>RFC</th>
                            <th>Nombre Completo</th>
                            <th>Fecha de Asistencia</th>
                            <th>Asiento</th>
                            <th>Lista por:</th>
                            <th>Representante</th>
                        </tr>
                    </thead>
            
                    <tbody>
                        {
                            this.state.PeopleAssistanceData.slice(this.state.startIndex, this.state.startIndex + 50).map( (people, index) => (
                                <tr key={index}>
                                    <td>{people.RFC}</td>
                                    <td>{people.FullName}</td>
                                    <td>{people.Time}</td>
                                    <td>{people.Seat != 0? people.Seat : "x"}</td>
                                    <td>{people.Username}</td>
                                    <td>{people.Representative}</td>
                                </tr>
                            ))
                        }
                    </tbody>
                </table>

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
                        if (current >= preState.PeopleAssistanceData.length) current = preState.PeopleAssistanceData.length - 1

                        return {startIndex: current}
                    })}
                >
                    Siguiente
                </a>
            </form>
        )


        return (
            <div className="center">
            
                <div className="container">
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