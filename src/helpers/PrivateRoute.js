import React from "react";
import {Navigate} from "react-router-dom";
import {isLoggedIn, useAuth} from "./Helpers";

export default function PrivateRoute(props) {
    const auth = useAuth(props);
    return isLoggedIn() && auth ? props.children : <Navigate to={'/login'} />
}