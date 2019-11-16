import React from "react";
import PropTypes from "prop-types";
import { BrowserRouter, Switch, Route } from 'react-router-dom';
import routes from '../lib/routes';
import { Provider } from 'react-redux';
import configureStore from './configureStore';
import HelloWorld from './HelloWorld';

const store = configureStore();

class App extends React.Component {
  render () {
    return (

      <Provider store={ store }>
        <BrowserRouter>
          <Switch>
            <Route path={ routes.hello} render={ () => <HelloWorld greeting="Friend" /> } />
            <Route exact path={ routes.root } render={ () => "Home!" } />
          </Switch>
        </BrowserRouter>
      </Provider>
    );
  }
}

export default App;
