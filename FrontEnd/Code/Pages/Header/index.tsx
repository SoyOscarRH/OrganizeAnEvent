import React from "react"
import {Link} from "react-router-dom"
import M from "materialize-css"

import * as Style from "./Styles.css"

interface HeaderState {
    title: string,
}
export default class Header extends React.Component<HeaderState> {

    constructor(props) {
        super(props)
    }

    componentDidMount() {
        const elements = document.querySelectorAll('.sidenav')
        M.Sidenav.init(elements, {draggable: true, edge: "left"})
    }

    render () {
        return (
            <React.Fragment>
                <div className="navbar-fixed">
                    <nav>
                        <div className="nav-wrapper">
                                <div className="brand-logo white-text">
                                    <div className={Style.AppHeader}>
                                        <span className="hide-on-small-only">
                                            Organize an Event: &nbsp;
                                        </span>
                                        {this.props.title}
                                    </div>
                            </div>

                            <Link to='/' className="brand-logo right">
                                <i className="material-icons white-text">home</i>
                            </Link>

                            <a data-target="SideMenu" className="sidenav-trigger show-on-large">
                                <i className="material-icons white-text">menu</i>
                            </a>

                        </div>
                    </nav>
                </div>

                <ul id="SideMenu" className="sidenav">
                    <li>
                        <div className="user-view" style={{backgroundColor: "#660033"}}>
                            <div className="container">
                                <h5 className="white-text" style={{fontWeight: 300}}>
                                    Menú
                                </h5>

                                <a><span className="white-text name">A</span></a>
                                <a><span className="white-text email">B</span></a>
                            </div>
                        </div>
                    </li>
                    <li><a className="subheader">Enlances</a></li>
                    <li>
                        <Link
                            className = "waves-effect"
                            to        = '/'
                            onClick   = {() => M.Sidenav.getInstance(document.getElementById("SideMenu")!).close()}>
                            <i className="material-icons">home</i>
                            Página de Inicio
                        </Link>
                    </li>
                    <li><a className="subheader">Analíticas</a></li>
                    <li>
                        <Link
                            className = "waves-effect"
                            to        = '/Analytics'
                            onClick   = {() => M.Sidenav.getInstance(document.getElementById("SideMenu")!).close()}>
                            <i className="material-icons">assessment</i>
                            Resúmen de Ventas
                        </Link>
                    </li>
                    <li><div className="divider" /></li>

                    <li><a className="subheader">Productos</a></li>
                    <li>
                        <Link
                            className = "waves-effect"
                            to        = '/SalesPage'
                            onClick   = {() => M.Sidenav.getInstance(document.getElementById("SideMenu")!).close()}>
                            <i className="material-icons">attach_money</i>
                            Página de Ventas
                        </Link>
                    </li>
                    <li>
                        <Link
                            className = "waves-effect"
                            to        = '/EditProduct'
                            onClick   = {() => M.Sidenav.getInstance(document.getElementById("SideMenu")!).close()}>
                            <i className="material-icons">edit</i>
                            Editar Productos
                        </Link>
                    </li>
                    <li><a className="subheader">Sesión</a></li>
                    <li>
                        <a
                            className = "waves-effect"
                            href = "/logout"
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