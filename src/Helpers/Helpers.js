import {useNavigate, useLocation, useParams} from "react-router-dom";

export function withRouter( Child ) {
    return ( props ) => {
        const location = useLocation();
        const params = useParams();
        const history = useNavigate();
        return <Child { ...props } params={params} location={ location } history={history} />;
    }
}

export function useAuth(props) {
    const user = JSON.parse(localStorage.getItem('ventura_user'))
    if(user)
        return props.roles.includes(user.role) || props.minlevel <= user.level
    else
        return false
}

export function isLoggedIn() {
    const login = localStorage.getItem('archives_login');
    return !!login;
}

export function createMarkup(content) {
    return {__html: content};
}