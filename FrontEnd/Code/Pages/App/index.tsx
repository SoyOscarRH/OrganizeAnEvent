// ======================================================================
// ============          WEB APP IN REACT           =====================
// ======================================================================
import React from "react"
import ReactDOM from "react-dom"
import {HashRouter, Route, Switch} from "react-router-dom";
import { createHashHistory } from "history";

import {sentData} from "../../General/GeneralFunctions"

import Header from "../Header"
import Dashboard from "../Dashboard"
import CheckIn from "../CheckIn"

interface AppState {
    unlisten: () => void,
    history: History,
    currentTitle: string
}

class App extends React.Component<any, AppState> {

    constructor(props) {
        super(props)

        const history = createHashHistory({basename: "/"})
        
        //@ts-ignore
        const unlisten = history.listen((location: Location) => {
            console.log(location)
            this.setState({currentTitle: this.getCurrentName(location.pathname)})
        })

        this.state = {
            //@ts-ignore
            history,
            unlisten,
            currentTitle: this.getCurrentName(history.location.pathname)
        }
    }

    getCurrentName(pathname: string) {
        if (pathname == "/") return "Panel"
        if (pathname == "/CheckIn") return "CheckIn"
        else return "?"
    }

    componentDidMount() {
        sentData("http://localhost/getData.php",  {aaaa: "asas"})
            .then( response => response.json() )
            .then (response => console.log(response))
    }

    componentWillUnmount() {
        this.state.unlisten()
    }

    
    render() {


        return (
            <main>
                <Header title={this.state.currentTitle} />

                <br />

                <Switch>
                    <Route path="/CheckIn" render={() => <CheckIn />} />
                    <Route exact path="/" render={() => <Dashboard />} />
                    <Route path="/hi" render={() => <span>hola be</span>} />
                </Switch>

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