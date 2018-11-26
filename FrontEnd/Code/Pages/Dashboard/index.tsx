import React from "react"
import {sentData} from "../../General/GeneralFunctions"
interface DashCardProps {
    name: JSX.Element, 
    link: string,
}

const DashCard: React.StatelessComponent<DashCardProps> = (props: DashCardProps) => {
    
    return (
        <div className="col s12 m6 l6">
            <div style={{paddingLeft: "0.5rem", paddingRight: "0.5rem"}}>
                <div className="card card-panel hoverable" style={{backgroundColor: "#f2f1f1"}}>
                    <span style={{fontSize: "1.3rem"}}>{props.name}</span>
                </div>
            </div>
        </div>
    )
}

const Dashboard: React.StatelessComponent<{}> = () => {
    
    sentData("http://localhost/getData.php",  {aaaa: "asas"})
    .then (response => console.log(response))

    return (
        <div className="row container">

            <DashCard name={<span><b>Pasar</b> lista</span>} link="sas" />
            <DashCard name={<span><b>Ver</b> lista actual</span>} link="sas" />

        </div>
    )
}

export default Dashboard