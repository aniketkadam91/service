"use client";

import { useEffect, useState } from "react";
import { useSelector } from "react-redux";

export default function Home() {
  const isUserLoggedIn = useSelector((state) => state.login.isUserLoggedIn);
  const [user, setUser] = useState("");

  useEffect(() => {
    if (isUserLoggedIn) {
      let userData = localStorage.getItem("token");
      const jsonObject = JSON.parse(userData);
      //console.log(jsonObject.user_display_name);

      setUser(jsonObject.user_display_name);
    }
  }, []);
  //console.log(user);
  return (
    <main>
      <h1 style={{ color: "white", textAlign: "center" }}>
        Time to get started!
      </h1>
      <h2 style={{ color: "white", textAlign: "center" }}>
        {isUserLoggedIn
          ? `Hey ${user} You are Welcome`
          : `You are not logged In, Plase login to proceed`}
      </h2>
    </main>
  );
}
