// ======================================================================
// ============          WEB APP IN REACT           =====================
// ======================================================================

import React from "react"
import ReactDOM from "react-dom"
import {HashRouter, Route, Switch} from "react-router-dom";
import { createHashHistory } from "history";

import Header from "../Header"
import HomeFeed from "../HomeFeed"

const AppWrapper: React.StatelessComponent = () => {
    
    return (
        <main>
            <HashRouter>
                <App />
            </HashRouter>
        </main>
    )
}


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
        if (pathname == "/") return "Feed"
        else return "Page"
    }

    componentWillUnmount() {
        this.state.unlisten()
    }
    
    render() {
        return (
            <React.Fragment>
            <Header title={this.state.currentTitle} />

            <Switch>
                <Route 
                    exact path="/" render={() => <HomeFeed />} 
                />
                <Route 
                    exact path="/hi" 
                    render={() => <h1>hi baby</h1>} 
                />
            </Switch>

            

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

            </React.Fragment>
        )
    }
}

ReactDOM.render(<AppWrapper />, document.getElementById("ReactApp"))