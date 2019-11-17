import { createStore } from 'redux';
import rootReducer from 'reducers';
import initialState from 'reducers/initialState';

const configureStore = () => createStore(rootReducer, initialState);

export default configureStore;
