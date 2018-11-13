import React from "react"
import { TabBar, Tab } from '@rmwc/tabs'


interface HeaderState {
    activeTab: any,
}

interface HeaderProps { }

export default class Header extends React.Component<HeaderProps, HeaderState> {

    constructor(props) {
        super (props)

        this.state = {
            activeTab: 0,
        }
    }

    render() {

        return (
            <TabBar
                activeTabIndex={this.state.activeTab}
                onActivate={evt => this.setState({activeTab: evt.detail.index})}
                >
                <Tab>Cookies</Tab>
                <Tab>Pizza</Tab>
                <Tab>Icecream</Tab>
                </TabBar>
        )
    }
    
}