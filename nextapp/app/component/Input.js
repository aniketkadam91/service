import React from "react";
import classes from "./input.module.css";

function Input({
  children,
  placeholder,
  type,
  required,
  name,
  className,
  errormessage,
  errormessageconfirm,
  invalidEmail,
}) {
  return (
    <>
      <div className={classes[className]}>
        <label htmlFor={name}>
          <b>{children}</b>
        </label>
        <input
          type={type}
          placeholder={placeholder}
          name={name}
          id={name}
          required={required}
        />
        {errormessage ? <p className={classes.error}>{errormessage}</p> : null}
        {errormessageconfirm ? (
          <p className={classes.error}>{errormessageconfirm}</p>
        ) : null}
        {invalidEmail ? <p className={classes.error}>{invalidEmail}</p> : null}
      </div>
    </>
  );
}

export default Input;
