import React, {Component} from 'react';
import {Link, Navigate} from "react-router-dom";

class LoginForm extends Component{
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            password: '',
            login: false,
            status:{
                type:'',
                message:'',
                error:'',
            }
        }
    }

    handleChange = (event) =>{
        this.setState({
            [event.target.name]: event.target.value
        })
    }

    handleSubmit = (event) =>{
        let api_base = process.env.REACT_APP_API_BASE;

        fetch(api_base+'login',{
            method:'post',
            body: new URLSearchParams({
                'username' : this.state.username,
                'password' : this.state.password
            }),
        })
            .then(res => res.json())
            .then(
                (result) => {
                    if(result.status === 'success') {
                        localStorage.setItem('orange_login', true)
                        localStorage.setItem('orange_user', JSON.stringify(result.user))

                        this.setState({
                            login:true
                        })
                    }else{
                        localStorage.setItem('orange_login', false)
                        this.setState({
                            login:false
                        })
                    }
                }
            )
            .catch((error) => {
                console.log(error)
                this.setState({
                    status: {
                        type: 'danger',
                        message: 'Something went wrong',
                        error: error,
                    }
                })
            })
        event.preventDefault();
    }

    render() {
        if(this.state.login){
            return <Navigate to={'/'} />
        }
        return(
            <>
                <div className="wlogin-wrapper bg-white rounded-2xl px-8 md:px-16 pt-14 mt-6">
                    <h1 className={'font-black text-3xl text-center mb-6 flex items-end justify-center items-center'}>
                        <img src={'/images/logo.svg'} style={{width: 70}} className={'inline'} alt={'Orange Logo'} />
                        Login
                    </h1>
                    <p className={'text-center text-sm mb-8 text-gray-800'}>Don't have an account? <Link className={'font-bold hover:text-black'} to={'/register'}>Register</Link></p>
                    <form onSubmit={this.handleSubmit}>
                        <div className={'my-3'}>
                            <label className={'text-sm mb-1 inline-block'}>Username</label>
                            <input type="text"
                                   className={'p-2 rounded-lg w-full border-2 focus:border-orange hover:border-gray-400 outline-none'}
                                   placeholder={'Username'} name={'username'} onChange={this.handleChange}
                                   autoComplete={'off'} />
                        </div>
                        <div className={'my-3'}>
                            <label className={'text-sm mb-1 inline-block'}>Password</label>
                            <input type="password"
                                   className={'p-2 rounded-lg w-full border-2 focus:border-orange hover:border-gray-400 outline-none'}
                                   placeholder={'Password'} name={'password'} onChange={this.handleChange} />
                        </div>
                        <div className={'flex justify-end mt-6'}>
                            <button type={'submit'} className={'py-3 btn-primary'}>Login</button>
                        </div>
                    </form>
                </div>
                <div className={"login-wrapper text-white rounded-2xl px-8 py-6 mt-6 "+(this.state.status.type !== '' ? 'bg-'+this.state.status.type : '')}>
                    {this.state.status.error}
                </div>
            </>
        )
    }
}

export default LoginForm