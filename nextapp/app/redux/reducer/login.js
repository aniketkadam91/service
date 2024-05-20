import { createSlice } from "@reduxjs/toolkit";
//import createActivityDetector from "activity-detector";
//import { useEffect } from "react";

let loginState = localStorage.getItem("token");
let initialStateVal = false;

const jsonObject = JSON.parse(loginState);
if (jsonObject) {
  let Initaltoken = jsonObject.token;
  //console.log(Initaltoken);
  if (Initaltoken) {
    initialStateVal = true;
  }
}

//console.log("initial state", initialStateVal);

// const activityDetector = createActivityDetector();

// useEffect(() => {
//   activityDetector.on("idle", () => {
//     console.log("The user is not interacting with the page");
//   });

//   activityDetector.on("active", () => {
//     console.log("The user is using the page");
//   });
// });

export const login = createSlice({
  name: "login",
  initialState: {
    isUserLoggedIn: initialStateVal,
  },
  reducers: {
    loginuser: (state) => {
      state.isUserLoggedIn = true;
    },
    logout: (state) => {
      state.isUserLoggedIn = false;
    },
  },
});

export const { loginuser, logout } = login.actions;
export default login.reducer;
