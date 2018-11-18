// ======================================================================
// ============          WEB APP IN REACT           =====================
// ======================================================================

import React from "react"
import ReactDOM from "react-dom"
import {HashRouter, Route} from "react-router-dom";
import { createBrowserHistory } from "history";

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
                <HashRouter>

                    <AppWrapper>

                        <Header />

                        <Route 
                            exact path="/" 
                            render={() => <h1>root</h1>} 
                        />

                        <Route 
                            exact path="/hi" 
                            render={() => <h1>hi baby</h1>} 
                        />
                    </AppWrapper>

                </HashRouter>
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





class AppWrapper extends React.Component<any, any> {

    unlisten: any

    constructor(props) {
        super(props)
    }

    componentDidMount() {

        const history = createBrowserHistory();

        // Get the current location.

        // Listen for changes to the current location.
        this.unlisten = history.listen((location) => {
            // location is an object like window.location
            console.log(location);
        });

        // Use push, replace, and go to navigate around.
        //history.push("/home", { some: "state" });

        // To stop listening, call the function returned from listen().
        //unlisten();


    }

    componentWillUnmount() {
    }
    
    render() {
       return (
           <div>{this.props.children}</div>
        );
    }
  }


ReactDOM.render(<App />, document.getElementById("ReactApp"))