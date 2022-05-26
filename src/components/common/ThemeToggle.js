import React from 'react';
import { ThemeContext } from './ThemeContext';

const ThemeToggle = (props) => {
    const { theme, setTheme } = React.useContext(ThemeContext);

    return (
        <div className={"inline-block transition duration-500 ease-in-out rounded-full py-1 px-6 bg-gray-100 dark:bg-gray-700 cursor-pointer text-gray-500 dark:text-gray-400 text-xl "+ props.className} onClick={() => setTheme(theme === 'dark' ? 'light' : 'dark')}>
            {theme === 'dark' ? (
                <i className="la la-moon" />
            ) : (
                <i className="la la-sun" />
            )}
        </div>
    );
};

export default ThemeToggle;