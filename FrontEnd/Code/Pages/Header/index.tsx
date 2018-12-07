import React from "react"
import {Link} from "react-router-dom"
import M from "materialize-css"

import * as Styles from "./Styles.css"


const UserDataShower: React.StatelessComponent<{data1: string, data2: string}> = (props) => {
    return (
        <div style={{fontSize: "1.1rem"}}>
            <span 
                className = "white-text"
                style     = {{fontFamily: "Raleway", fontWeight: 600}}>
                {props.data1}:
            </span>
            &nbsp;
            <span 
                className = "white-text"
                style     = {{fontFamily: "Lato", fontWeight: 300}}>
                {props.data2} 
            </span>
        </div>
    )
}

const NormalHeaeder: React.StatelessComponent<{title: string}> = props => (
    <div className="navbar-fixed">
        <nav>
            <div className="nav-wrapper">
                    <div className="brand-logo white-text">
                        <div className={Styles.AppHeader}>
                            <span 
                                className = "hide-on-small-only" 
                                style     = {{fontFamily: "Raleway", fontWeight: 600}}
                            >
                                Organize an Event: &nbsp;
                            </span>

                            <span style = {{fontFamily: "Raleway", fontWeight: 300}}>
                                {props.title}
                            </span>
                        </div>
                </div>

                <Link to='/' className="brand-logo right">
                    <span className={Styles.RealIcon}>
                        <i className="material-icons white-text">home</i>
                    </span>
                </Link>


                <a data-target="SideMenu" className="sidenav-trigger show-on-large">
                    <span className={Styles.RealIcon}>
                        <i className="material-icons white-text">menu</i>
                    </span>
                </a>

            </div>
        </nav>
    </div>
)

const closeSidePanel = () => M.Sidenav.getInstance(document.getElementById("SideMenu")!).close()

const MenuLink: React.StatelessComponent<{path: string, icon, name: string}> = props => (
    <li>
        <Link className="waves-effect" to={props.path} onClick={closeSidePanel}>
            <i className="material-icons" style={{marginRight: "15px"}}>
                {props.icon}
            </i>
            {props.name}
        </Link>
    </li>
)


const Icon: React.StatelessComponent<{}> = () => {
    //@ts-ignore
    const isAdmin = window.userData.userType == "Admin"
    const iconName = (isAdmin)? "verified_user" : "tag_faces" 
    return (
        <i 
            style={{fontSize: "2.5rem"}}
            data-position = "right"
            data-tooltip  = {(isAdmin)? "Super usuario" : "Usuario normal"}
            className     = "tooltipped material-icons white-text">
            {iconName}
        </i>
    )
}

export default class Header extends React.Component<{title: string}> {

    constructor(props) { super(props) }

    componentDidMount() {
        const sideElements = document.querySelectorAll('.sidenav')
        const toolTipsElements = document.querySelectorAll('.tooltipped')

        M.Sidenav.init(sideElements, {draggable: true, edge: "left"})
        M.Tooltip.init(toolTipsElements, {})
    }

    render () {
        const userName: string = window['userData'].userName
        const userType: string = window['userData'].userType

        return (
            <React.Fragment>
                
                <NormalHeaeder title = {this.props.title} />

                <ul id="SideMenu" className="sidenav">
                    
                    <li>
                        <div className={"user-view " + Styles.RealUserView}>
                            <div className="container">
                                <h5 className="white-text"> Menú </h5>

                                <Icon />
                                <UserDataShower data1 = "Usuario" data2 = {userName} />
                                <UserDataShower data1 = "Tipo" data2 = {userType} />
                                <br />
                            </div>
                        </div>
                    </li>

                    <li><a className="subheader">Enlances</a></li>
                        <MenuLink
                            path = "/"
                            icon = "home"
                            name = "Inicio" 
                        />
                        <MenuLink
                            path = "/CheckIn"
                            icon = "format_list_bulleted"
                            name = "Pasar lista" 
                        />
                        <MenuLink
                            path = "/Feed"
                            icon = "fiber_new"
                            name = "Feed de noticias" 
                        />

                    <li><a className="subheader">Analíticas</a></li>
                    
                    <li>
                        <Link
                            className = "waves-effect"
                            to        = '/Analytics'
                            onClick   = {() => M.Sidenav.getInstance(document.getElementById("SideMenu")!).close()}>
                            <i className="material-icons">assessment</i>
                            Reporte General
                        </Link>
                    </li>
                    <li><div className="divider" /></li>

                    <li><a className="subheader">Documentos</a></li>
                    <li>
                        <Link
                            className = "waves-effect"
                            to        = '/AdminAssistance'
                            onClick   = {() => M.Sidenav.getInstance(document.getElementById("SideMenu")!).close()}>
                            <i className="material-icons">email</i>
                            Enviar invitaciones
                        </Link>
                    </li>
                    <li>
                        <Link
                            className = "waves-effect"
                            to        = '/Awards'
                            onClick   = {() => M.Sidenav.getInstance(document.getElementById("SideMenu")!).close()}>
                            <i className="material-icons">stars</i>
                            Obtener reconocimientos
                        </Link>
                    </li>
                    <li><a className="subheader">Sesión</a></li>
                    <li>
                        <a
                            className = "waves-effect"
                            href = "/logout.php"
                        >
                            <i className="material-icons">exit_to_app</i>
                            Cerrar Sesión
                        </a>
                    </li>

                </ul>
            </React.Fragment>
        );
    }
}