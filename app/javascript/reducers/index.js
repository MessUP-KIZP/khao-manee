import { combineReducers } from 'redux';
import helloWorld from 'reducers/helloWorld';
import { connectRouter } from 'connected-react-router'

export default (history) => combineReducers({
  router: connectRouter(history),
  helloWorld,
});
