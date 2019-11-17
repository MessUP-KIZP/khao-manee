import { combineReducers } from 'redux';
import helloWorld from 'reducers/helloWorld';
import { routerReducer as router } from 'react-router-redux';

export default combineReducers({
  router,
  helloWorld,
});
