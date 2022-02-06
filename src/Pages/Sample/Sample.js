import React from 'react';
import './sample.css';

function Sample() {
    return (
        <div className="App">
            <header className="App-header">
                <img src={'/images/logo.svg'} className="App-logo" alt="logo" />
                <p>
                    Ready to code ReactJS setup by Nipuna
                </p>
                <a
                    className="App-link"
                    href="https://reactjs.org"
                    target="_blank"
                    rel="noopener noreferrer"
                >
                    Learn React
                </a>
            </header>
        </div>
    );
}

export default Sample;
