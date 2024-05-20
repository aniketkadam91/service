import React from 'react';
import classes from './button.module.css'

function Button({children,className,type}) {
    return (
        <>
            <button className={classes[className]} type={type}>{children}</button>
        </>
    );
}

export default Button;