import React from "react"
import { AdminZone } from "../../General/GeneralFunctions"
import { withRouter } from 'react-router-dom'
import { History } from "history";

import * as Styles from "./Styles.css"

interface DashCardProps {
    name: JSX.Element, 
    link: string,
    history: History,
    location: any, 
    match: any, 
    icon?: string,
}

const DashCardPure: React.StatelessComponent<DashCardProps> = (props: DashCardProps) => {
    
    return (
        <div className="col s12 m6 l6">
            <div className={Styles.DashCardMargin}>
                <div 
                    className = {"card card-panel hoverable valign-wrapper " + Styles.DashCard}
                    style     = {{backgroundColor: "#f2f1f1"}}
                    onClick   = {() => props.history.push(props.link)}
                >
                    <i className="material-icons" style={{fontSize: "3rem"}}>
                        {props.icon != undefined? props.icon : "format_list_bulleted"}
                    </i>
                    &nbsp;
                    <span>{props.name}</span>
                </div>
            </div>
        </div>
    )
}

const DashCard = withRouter(DashCardPure)

const Dashboard: React.StatelessComponent<{}> = () => {
    
    return (
        
        <div className="row container">

            <DashCard name={<span><b>Pasar</b> lista</span>} link="/CheckIn" icon="assignment_turned_in" />
            <DashCard name={<span><b>Generar</b> documento de speech</span>} link="/Speech" icon="airline_seat_recline_normal" />
            <DashCard name={<span><b>Obtener</b> Reconocimientos</span>} link="/Awards" icon="stars" />
            <DashCard name={<span><b>Gestionar</b> Invitados</span>} link="/AdminAssistance" icon="edit"/>

            <AdminZone>
                <DashCard name={<span><b>Enviar</b> Invitaciones</span>} link="/SendInvitations" icon="email"/>
                <DashCard name={<span><b>Feed de</b> Noticias</span>} link="sas" icon="fiber_new"/>
                <DashCard name={<span><b>Reporte</b> General</span>} link="/Report" icon="insert_chart"/>
            </AdminZone>
        </div>
    )
}

export default Dashboard