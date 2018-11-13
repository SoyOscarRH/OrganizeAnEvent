// ======================================================================
// ============          WEB APP IN REACT           =====================
// ======================================================================

import React from "react"
import ReactDOM from "react-dom"

import { ThemeProvider } from '@rmwc/theme'
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
                <br />

                <Header />


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


ReactDOM.render(
    <ThemeProvider options={{
        primary: '#303030',
        secondary: '#661fff',
        error: '#b00020',
        background: '#fff',
        surface: '#fff',
        onPrimary: 'rgba(255, 255, 255, 1)',
        onSecondary: 'rgba(255, 255, 255, 1)',
        onSurface: 'rgba(0, 0, 0, 0.87)',
        onError: '',
        textPrimaryOnBackground: 'rgba(0, 0, 0, 0.87)',
        textSecondaryOnBackground: 'rgba(0, 0, 0, 0.54)',
        textHintOnBackground: 'rgba(0, 0, 0, 0.38)',
        textDisabledOnBackground: 'rgba(0, 0, 0, 0.38)',
        textIconOnBackground: 'rgba(0, 0, 0, 0.38)',
        textPrimaryOnLight: 'rgba(0, 0, 0, 0.87)',
        textSecondaryOnLight: 'rgba(0, 0, 0, 0.54)',
        textHintOnLight: 'rgba(0, 0, 0, 0.38)',
        textDisabledOnLight: 'rgba(0, 0, 0, 0.38)',
        textIconOnLight: 'rgba(0, 0, 0, 0.38)',
        textPrimaryOnDark: 'white',
        textSecondaryOnDark: 'rgba(255, 255, 255, 0.7)',
        textHintOnDark: 'rgba(255, 255, 255, 0.5)',
        textDisabledOnDark: 'rgba(255, 255, 255, 0.5)',
        textIconOnDark: 'rgba(255, 255, 255, 0.5)'
      }}>
        <App />
    </ThemeProvider >
    ,document.getElementById("ReactApp")
)