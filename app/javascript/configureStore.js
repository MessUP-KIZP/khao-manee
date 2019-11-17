import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';
import promise from 'redux-promise-middleware';
import { routerMiddleware } from 'connected-react-router'
import { composeWithDevTools } from 'redux-devtools-extension';
import rootReducer from 'reducers';
import { createBrowserHistory } from 'history';
import initialState from 'reducers/initialState';

export const history = createBrowserHistory();

const getMiddleware = () => {

  const allowed = [
    thunk,
    routerMiddleware(history),
    promise
  ]

  if (process.env.NODE_ENV !== 'production') {
    console.log('2 non production')
    return [
      ...allowed,
      require('redux-immutable-state-invariant').default(),
    ];
  }

  return allowed;
};


const configureStore = () => {
  const appliedMiddleware = composeWithDevTools(applyMiddleware(...getMiddleware()));

  return createStore(rootReducer(history), initialState, appliedMiddleware);
}

export default configureStore;
