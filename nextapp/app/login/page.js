"use client";
import React from "react";
import Input from "../component/Input";
import Button from "../component/Button";
import classes from "./login.module.css";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import { useRouter } from "next/navigation";
import { useDispatch } from "react-redux";
import { loginuser } from "../redux/reducer/login";

function Login(props) {
  const router = useRouter();
  const dispatch = useDispatch();
  async function checkLogin(data) {
    try {
      const response = await fetch(
        "http://localhost/services/wp-json/jwt-auth/v1/token",
        {
          method: "POST", // or 'PUT'
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(data),
        }
      );

      const result = await response.json();

      //console.log(result.message);
      if (result.data && result.data.status == 403) {
        const tempElement = document.createElement("div");
        tempElement.innerHTML = result.message;
        const plainTextMessage =
          tempElement.textContent || tempElement.innerText || "";

        //console.log("hiiii");
        toast.error(plainTextMessage, {
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

      if (result.token) {
        toast.success("Login Successful", {
          position: "top-right",
          autoClose: 4000,
          hideProgressBar: false,
          closeOnClick: true,
          pauseOnHover: true,
          draggable: true,
          progress: undefined,
          theme: "light",
        });
        localStorage.setItem("token", JSON.stringify(result));
        dispatch(loginuser());
        setTimeout(() => {
          router.push("/");
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

    const resDeata = {
      username: enterdEmail,
      password: enterdPassword,
    };
    e.target.reset();

    checkLogin(resDeata);
  };

  return (
    <>
      <div className={classes.login_form}>
        <h1 className={classes.header}>Login</h1>
        <form onSubmit={handleSubmit}>
          <div className={classes.form_container}>
            <Input
              className="input_wrapper"
              type="email"
              placeholder="Enter Email"
              name="email"
              required={true}
            >
              Enter Email
            </Input>
            <Input
              className="input_wrapper"
              type="password"
              placeholder="Enter Password"
              name="psw"
              required={true}
            >
              Enter Password
            </Input>
            <Button type="submit" className="registerbtn">
              {" "}
              Login
            </Button>
          </div>
        </form>
      </div>
      <ToastContainer />
    </>
  );
}

export default Login;
