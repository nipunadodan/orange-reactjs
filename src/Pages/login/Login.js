import React, {Component} from "react";
import LoginForm from "./LoginForm";

class Login extends Component{
    render() {
        return(
            <div className={'flex items-center justify-center flex-col min-h-screen'}>
                <LoginForm />
            </div>
        )
    }
}

export default Login