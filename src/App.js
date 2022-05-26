import React from 'react';
import {BrowserRouter, Route, Routes} from "react-router-dom";
import {ThemeProvider} from "./components/common/ThemeContext";
import Login from "./components/pages/login/Login";
import Home from "./components/pages/Home";
import Dashboard from "./components/pages/dashboard/Dashboard";
import PrivateRoute from "./helpers/PrivateRoute";
import UserEditSingle from "./components/pages/dashboard/UserEditSingle";

function App() {
  return (
      <ThemeProvider>
        <BrowserRouter basename={''}>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/login" element={<Login />} />
            <Route path={'/dashboard'} element={
                <PrivateRoute roles={['ROLE_ADMIN']} minlevel={5}>
                    <Dashboard/>
                </PrivateRoute>
            } />
            <Route path={'/user-edit/:user'} element={
                <PrivateRoute roles={['ROLE_ADMIN']} minlevel={5}>
                    <UserEditSingle />
                </PrivateRoute>
            }/>
          </Routes>
        </BrowserRouter>
      </ThemeProvider>
  );
}

export default App;
