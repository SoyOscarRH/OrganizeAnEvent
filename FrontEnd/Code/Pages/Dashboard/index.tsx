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
                    <i className="material-icons" style={{fontSize: "3rem"}}>format_list_bulleted</i>
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

            <DashCard name={<span><b>Pasar</b> lista</span>} link="/CheckIn" />
            <DashCard name={<span><b>Ver</b> lista actual</span>} link="sas" />

            <AdminZone>
                <DashCard name={<span><b>Añadir</b> Usuario</span>} link="sas" />
                <DashCard name={<span><b>Enviar</b> Invitaciones</span>} link="sas" />
                <DashCard name={<span><b>Mostrar</b> Eventos</span>} link="sas" />
            </AdminZone>
        </div>
    )
}

export default Dashboard