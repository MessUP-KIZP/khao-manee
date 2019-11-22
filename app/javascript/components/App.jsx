import React from 'react';
import PropTypes from 'prop-types';
import { Switch, Route } from 'react-router-dom';
import { ConnectedRouter } from 'connected-react-router';
import routes, { api } from 'routes';
import { Provider } from 'react-redux';
import configureStore, { history } from 'configureStore';
import HelloWorld from 'components/helloWorld';
import Login from 'components/login';

const store = configureStore();

class App extends React.Component {
  render () {
    return (
      <Provider store={ store }>
        <ConnectedRouter history={ history }>
          <Switch>
            <Route path={ routes.hello} render={ () => <HelloWorld greeting="Friend" /> } />
            <Route path={ api.users.session.new } render={ () => <Login /> } />
            <Route exact path={ routes.root } render={ () => "Home!" } />
          </Switch>
        </ConnectedRouter>
      </Provider>
    );
  }
}

export default App;
