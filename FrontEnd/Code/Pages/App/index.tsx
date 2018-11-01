// ======================================================================
// ============          WEB APP IN REACT           =====================
// ======================================================================

import React from "react"
import ReactDOM from "react-dom"

import * as Styles from "./Styles.css"
import M from "materialize-css"

interface AppState {
    trash: string,
    someMoreTrash: number,
}

interface AppProps {

}

class App extends React.Component<AppProps, AppState> {

    constructor(props) {
        super (props)
    }

    componentDidMount () {
        const someNodes = document.querySelectorAll('.parallax')
        M.Parallax.init(someNodes, {})
    }

    render() {

        return (
            <main>
                <br />

                <div className={Styles.SomeStyle}>
                    Hi World 
                </div>

                <div className="parallax-container">
                    <div className="parallax"><img src="Assets/SomeStuff.jpg" /></div>
                </div>

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


ReactDOM.render(<App />, document.getElementById("ReactApp"))