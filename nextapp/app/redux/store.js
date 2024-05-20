import { configureStore } from "@reduxjs/toolkit";
import LoginReducer from "../redux/reducer/login";
export const store = configureStore({
  reducer: {
    login: LoginReducer,
  },
});
