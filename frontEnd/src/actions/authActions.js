import { LOGIN, LOGOUT } from "../types/authTypes"

export const login = credentials => {
  console.log("authActions.login:", credentials)
  return {
    type: LOGIN,
  }
}

export const logout = () => {
  return {
    type: LOGOUT,
  }
}
