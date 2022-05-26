import React, {useState} from 'react';
import {Link, Navigate} from "react-router-dom";

const LoginForm = () => {
    const [user, setUser] = useState({
        username: '',
        password: '',
        login: false,
        status:{
            type:'',
            message:'',
            error:'',
        }
    })

    const handleChange = (event) =>{
        setUser({
            ...user,
            [event.target.name]: event.target.value
        })
    }
    
    const handleSubmit = (event) =>{
        event.preventDefault();
        fetch('http://localhost:3001/login',{
            method:'post',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                'username' : user.username,
                'password' : user.password
            }),
        })
            .then(res => res.json())
            .then(
                (result) => {
                    localStorage.setItem('o_login', true)
                    localStorage.setItem('o_user', JSON.stringify(result))

                    setUser({
                        login:true
                    })
                }
            )
            .catch((error) => {
                console.log(error)
                setUser({
                    login:false,
                    status: {
                        type: 'danger',
                        message: 'Something went wrong',
                        error: error,
                    }
                })
            })
    }
    
    return(
        <>
        {
            user.login ? <Navigate to={'/'} /> :
                <>
                    <div className="login-wrapper rounded-2xl px-8 md:px-16 pt-14 mt-6">
                        <h1 className={'font-thin text-3xl text-center mb-6 flex items-end justify-center items-center'}>
                            <span
                                className={'font-bold pr-2 mr-2 border-r border-gray-500 text-4xl'}>accounts</span> login
                        </h1>
                        <p className={'text-center text-sm mb-8 text-gray-800'}>Don't have an account? <Link
                            className={'font-bold hover:text-black'} to={'/register'}>Register</Link></p>
                        <form onSubmit={handleSubmit}>
                            <div className={'my-3'}>
                                <label className={'text-sm mb-1 inline-block'}>Username</label>
                                <input type="text"
                                       className={'p-2 rounded-lg w-full border-2 focus:border-eco hover:border-gray-400 outline-none dark:bg-gray-700'}
                                       placeholder={'Username'} name={'username'} onChange={handleChange}
                                       autoComplete={'off'}/>
                            </div>
                            <div className={'my-3'}>
                                <label className={'text-sm mb-1 inline-block'}>Password</label>
                                <input type="password"
                                       className={'p-2 rounded-lg w-full border-2 focus:border-eco hover:border-gray-400 outline-none dark:bg-gray-700'}
                                       placeholder={'Password'} name={'password'} onChange={handleChange}/>
                            </div>
                            <div className={'flex justify-end mt-6'}>
                                <button type={'submit'} className={'btn-primary'}>Login</button>
                            </div>
                        </form>
                    </div>
                </>
        }
        </>
    )
}

export default LoginForm