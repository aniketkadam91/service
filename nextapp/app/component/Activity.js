"use client";
import { useSelector, useDispatch } from "react-redux";
import { logout } from "../redux/reducer/login";
import { useRouter } from "next/navigation";
import { useState, useRef, useEffect } from "react";

const Activity = () => {
  const dispatch = useDispatch();
  const router = useRouter();
  const isUserLoggedIn = useSelector((state) => state.login.isUserLoggedIn);
  const [inactive, setInactive] = useState(false);
  const timer = useRef(null);

  const logoutUser = () => {
    if (isUserLoggedIn) {
      console.log("Logging out user due to inactivity");
      dispatch(logout());
      localStorage.removeItem("token");
      setTimeout(() => {
        router.push("/");
      }, 5000);
    }
  };

  const resetTimer = () => {
    if (timer.current) {
      clearTimeout(timer.current);
    }
    timer.current = setTimeout(() => {
      setInactive(true);
    }, 300000); // 300000 ms = 5 minutes
  };

  const handleActivity = () => {
    setInactive(false);
    resetTimer();
  };

  useEffect(() => {
    const events = [
      "mousemove",
      "mousedown",
      "keypress",
      "touchstart",
      "click",
    ];

    events.forEach((event) => {
      window.addEventListener(event, handleActivity);
    });

    resetTimer();

    return () => {
      events.forEach((event) => {
        window.removeEventListener(event, handleActivity);
      });
      if (timer.current) {
        clearTimeout(timer.current);
      }
    };
  }, []);

  useEffect(() => {
    if (inactive) {
      logoutUser();
    }
  }, [inactive]);

  return null;
};

export default Activity;
