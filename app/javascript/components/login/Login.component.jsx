import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { api } from 'routes';

export default class Login extends Component {
  render() {
    console.log("RENDERIGN LOGIN COMP")
    return (
      <div className="login-page">
        <div className="login-area">
          <h3 className="title">Please Log In</h3>
          <form
            className="login-form"
            method="POST"
            action={ api.users.session.create }
          >
          <input
            id="email-input"
            name="email"
            placeholder="Email"
            type="email"
            required
          />
          <input
            id="password-input"
            name="password"
            placeholder="Password"
            type="password"
            required
          />
          <button type="submit">Login</button>
          </form>
        </div>
      </div>
    );
  }
}
