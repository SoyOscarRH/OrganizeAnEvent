// ======================================================================
// ============          WEB APP IN REACT           =====================
// ======================================================================

import React from "react"
import ReactDOM from "react-dom"
import {HashRouter} from "react-router-dom";

import Header from "../Header"

interface AppState {
    trash: string,
    someMoreTrash: number,
}

interface AppProps { }

class App extends React.Component<AppProps, AppState> {

    constructor(props) {
        super (props)
    }

    componentDidMount () {
    }

    render() {

        return (
            <main>
                <Header />
                <br />
                <br />
                <br />


                <br />
                <br />
                <br />
                <br />
                <br />
                <br />

            </main>
        )
    }
    
}


ReactDOM.render(<HashRouter><App /></HashRouter>, document.getElementById("ReactApp"))