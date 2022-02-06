import React from 'react';

function Sample() {
    return (
        <div className="App">
            <header className="App-header">
                <img src={'/images/logo.svg'} className="App-logo" alt="logo" />
                <p>
                    This is a Private Route
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
