"use client";
import React, { useState } from "react";
import classes from "./register.module.css";
import Button from "../component/Button";
import Input from "../component/Input";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import { useRouter } from "next/navigation";

function Register(props) {
  const router = useRouter();

  const [errormessage, setMessage] = React.useState("");
  const [errormessageconfirm, setErrormessageconfirm] = React.useState("");
  const [invalidEmail, setInValidEmail] = useState("");

  async function postJSON(data) {
    try {
      const response = await fetch(
        "http://localhost/services/wp-json/nextroot/v1/register",
        {
          method: "POST", // or 'PUT'
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(data),
        }
      );

      const result = await response.json();
      //console.log("Success:", result, typeof result);
      if (result.code == "existing_user_email") {
        toast.error(result.message, {
          position: "top-right",
          autoClose: 5000,
          hideProgressBar: false,
          closeOnClick: true,
          pauseOnHover: true,
          draggable: true,
          progress: undefined,
          theme: "light",
        });
      }
      if (typeof result === "number") {
        toast.success("Registration Successful", {
          position: "top-right",
          autoClose: 4000,
          hideProgressBar: false,
          closeOnClick: true,
          pauseOnHover: true,
          draggable: true,
          progress: undefined,
          theme: "light",
        });

        setTimeout(() => {
          router.push("/login");
        }, 5000);
      }
    } catch (error) {
      console.error("Error:", error);
    }
  }

  const handleSubmit = (e) => {
    e.preventDefault();
    const fd = new FormData(e.target);
    const enterdEmail = fd.get("email");
    const enterdPassword = fd.get("psw");
    const firstname = fd.get("firstname");
    const lastname = fd.get("lastname");
    const confirm = fd.get("psw-repeat");

    const validEmail = validateEmail(enterdEmail);
    //console.log(validEmail);

    if (validEmail == null) {
      setInValidEmail("Enter Valid Email");
      return;
    } else {
      setInValidEmail("");
    }

    if (enterdPassword.length < 8 || enterdPassword.length > 16) {
      setMessage("Password must be between 8 to 15 characters");
      //setValid(false);
      return;
    } else {
      setMessage("");
    }

    if (enterdPassword !== confirm) {
      setErrormessageconfirm("Password not matching");
      return;
    } else {
      setErrormessageconfirm("");
    }

    let reqData = {
      username: firstname + lastname,
      password: enterdPassword,
      email: enterdEmail,
      first_name: firstname,
      last_name: lastname,
    };

    e.target.reset();
    postJSON(reqData);
  };

  const validateEmail = (email) => {
    return String(email)
      .toLowerCase()
      .match(
        /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
      );
  };

  return (
    <>
      <div className={classes.form_section}>
        <h1 className={classes.header}>Register Here</h1>
        <form onSubmit={handleSubmit}>
          <div className={classes.form_container}>
            <Input
              className="input_wrapper"
              type="text"
              placeholder="First Name"
              name="firstname"
              required={true}
            >
              First Name
            </Input>
            <Input
              className="input_wrapper"
              type="text"
              placeholder="Last Name"
              name="lastname"
              required={false}
            >
              Last Name
            </Input>
            <Input
              className="input_wrapper"
              type="email"
              placeholder="Enter Email"
              name="email"
              required={true}
              invalidEmail={invalidEmail}
            >
              Enter Email
            </Input>
            <Input
              className="input_wrapper"
              errormessage={errormessage}
              type="password"
              placeholder="Enter Password"
              name="psw"
              required={true}
            >
              Enter Password
            </Input>
            <Input
              className="input_wrapper"
              errormessageconfirm={errormessageconfirm}
              type="password"
              placeholder="Confirm Password"
              name="psw-repeat"
              required={true}
            >
              Confirm Password
            </Input>
            <Button type="submit" className="registerbtn">
              {" "}
              Register
            </Button>
          </div>
        </form>
      </div>
      <ToastContainer />
    </>
  );
}

export default Register;
