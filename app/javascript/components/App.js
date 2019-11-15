import React from "react";
import PropTypes from "prop-types";
import { BrowserRouter, Switch, Route } from 'react-router-dom';
import routes from '../lib/routes';
import HelloWorld from './HelloWorld';

class App extends React.Component {
  render () {
    return (
      <React.Fragment>
        <BrowserRouter>
          <Switch>
            <Route path={ routes.hello} render={ () => <HelloWorld greeting="Friend" /> } />
            <Route exact path={ routes.root } render={ () => "Home!" } />
          </Switch>
        </BrowserRouter>
      </React.Fragment>
    );
  }
}

export default App;
