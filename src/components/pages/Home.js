import React from "react";
import ThemeToggle from "../common/ThemeToggle";

const Home = () => {
    return (
        <div className={'dark:bg-gray-800 dark:text-white text-dark min-h-screen flex items-center justify-center transition-all'}>
            <div className={'text-center'}>
                <h1 className={'text-6xl mb-3'}>Test</h1>
                <hr className={'w-80 max-w-full'} />
                <h2 className={'text-xl mt-3'}>React.js Boilerplate</h2>
                <ThemeToggle className={'mt-6'} />
            </div>
        </div>
    )
}

export default Home