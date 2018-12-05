import React from 'react'
import {sentData} from "../../General/GeneralFunctions"


interface CheckInState {
    EventData: JSX.Element,
}

interface CheckInProps {

}

export default class CheckIn extends React.Component<CheckInProps, CheckInState> {

    constructor(props) {
        super(props)

        this.state = {
            EventData: <span />
        }
    }

    componentDidMount() {
        sentData("http://localhost/getData.php?GetEventData=", {})
            .then (response => response.json())
            .then (response => console.log(response))
    }

    handleDataInput(data: string) {
        sentData("http://localhost/getData.php?GetUserData=", {data})
            .then (response => response.json())
            .then (response => console.log(response))
    }

    render () {
        return (
            <div className="center">
                <h4>Pasar Lista</h4>

                {this.state.EventData}

                <form className="row">
                    <div className="col s12 m10 offset-m1 l6 offset-l3">
                        <div className="card" style={{backgroundColor: "#f2f1f1"}}>
                            <div className="card-content blue-grey-text text-darken-4">
                                
                                <p style={{fontSize: "1.2rem"}}>
                                    Puedes pasar lista con el código de barras,
                                    nombre o RFC del invitado
                                </p>

                                <br />

                                <div className="row white-text">
                                    <div className="input-field col s12 m8 offset-m2">
                                        <input 
                                            id        ="dataInput" 
                                            type      = "text"
                                            className = "validate"
                                            required  = {true}
                                            style     = {{fontSize: "1.5rem"}}/>
                                        <label htmlFor="dataInput">Email</label>
                                    </div>
                                </div>

                                <button 
                                    type      = "submit"
                                    className = "btn-floating btn-large green lighten-1 waves-effect"
                                    onClick   =  {(e) => {
                                        //@ts-ignore
                                        const text = document.getElementById('dataInput').value
                                        if (text == '') return;
                                        else this.handleDataInput(text);

                                        e.preventDefault();
                                    }}
                                >
                                    <i className="material-icons">arrow_forward</i>
                                </button>
                            
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        )
    }
}