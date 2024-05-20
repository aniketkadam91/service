"use client";
import Link from "next/link";
import React from "react";
import classes from "./header.module.css";
import { useSelector } from "react-redux";
import { useDispatch } from "react-redux";
import { logout } from "./redux/reducer/login";
import { useRouter } from "next/navigation";

function Navigation(props) {
  const isUserLoggedIn = useSelector((state) => state.login.isUserLoggedIn);
  const dispatch = useDispatch();
  const router = useRouter();
  const handleCLick = () => {
    //console.log("logout");
    dispatch(logout());
    localStorage.removeItem("token");
    // toast.success("You are logged out Successful", {
    //   position: "top-right",
    //   autoClose: 4000,
    //   hideProgressBar: false,
    //   closeOnClick: true,
    //   pauseOnHover: true,
    //   draggable: true,
    //   progress: undefined,
    //   theme: "light",
    // });
    setTimeout(() => {
      router.push("/");
    }, 5000);
  };

  return (
    <>
      <header className={classes.header}>
        <Link className={classes.logo} href="/">
          NextApp
        </Link>
        <nav className={classes.nav}>
          <ul>
            <li>
              <Link href="/register">Register</Link>
            </li>
            <li>
              {isUserLoggedIn ? (
                <button onClick={handleCLick} className={classes.btn}>
                  Logout
                </button>
              ) : (
                <Link href="/login">Login</Link>
              )}
            </li>
          </ul>
        </nav>
      </header>
    </>
  );
}

export default Navigation;
