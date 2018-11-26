import React from 'react'
import {Route} from 'react-router-dom'

export function sentData(url: string, data: object): Promise<object> {
    return fetch(url, {
        headers: {
            'content-type': 'application/json',
            'accept':       'application/json'
        },
        body:        JSON.stringify(data, null, '\t'), 
        cache:       'no-cache',
        credentials: 'same-origin',
        method:      'POST', 
        mode:        'cors', 
        redirect:    'follow',
        referrer:    'no-referrer',
    })
    .then(response => response.json() )
}

export function toTitleCase(data: string): string {
    return data.replace(/\w\S*/g, text => text.charAt(0).toUpperCase() + text.substr(1).toLowerCase())
}

interface PrivateRouteProps {
    toRender: () => React.Component | JSX.Element,
    exact: boolean,
    path: string,
}

export const AdminRoute = (props: PrivateRouteProps) => {
    //@ts-ignore
    const haveCredencial = window.userData.userType === "Admin"
    const toRender = (haveCredencial)? props.toRender : () => <span></span>
    return (
        <Route 
        exact  = {props.exact}
        path   = {props.path}
        render = {toRender} 
        />
    )
}

export const AdminZone = (props) => {
    //@ts-ignore
    const haveCredencial = window.userData.userType === "Admin";

    if (haveCredencial) return (
        <React.Fragment>
            {props.children}
        </React.Fragment>
    )

    else return <span></span>
}