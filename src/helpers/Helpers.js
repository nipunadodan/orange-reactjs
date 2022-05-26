export function useAuth(props) {
    const user = JSON.parse(localStorage.getItem('o_user') ?? '{}')
    if(user)
        return props.roles.includes(user.role) || props.minlevel <= user.level
    else
        return false
}

export function isLoggedIn() {
    const login = localStorage.getItem('o_login');
    return !!login;
}

export function createMarkup(content) {
    return {__html: content};
}