import React from "react";
import LoginForm from "./LoginForm";

const Login = () => {
    return (
        <div className={'flex items-center justify-center flex-col min-h-screen dark:bg-gray-800 dark:text-gray-100 transition-all'}>
            <LoginForm />
        </div>
    )
}

export default Login