import React from 'react';

import {BrowserRouter, Route, Routes} from "react-router-dom";
import Sample from "./Pages/Sample/Sample";
import SamplePrivatePage from "./Pages/Sample/SamplePrivatePage";
import PrivateRoute from "./Helpers/PrivateRoute";
import Login from "./Pages/login/Login";
import NotFound from "./Common/NotFound";

function App() {
  return (
    <BrowserRouter basename={''}>
      <Routes>
          <Route path={'/'} element={<Sample />} />
          <Route path={'/private'} element={
              <PrivateRoute roles={['ROLE_ADMIN']} minlevel={4}>
                <SamplePrivatePage />
              </PrivateRoute>
          } />
          <Route path={'/login'} element={<Login />} />
          <Route
              path="*"
              element={
                  <NotFound />
              }
          />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
