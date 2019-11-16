import { createStore } from 'redux';

const initialState = {};

const rootReducer = (state, action) => {
  switch (action.type) {
    default:
      return state;
  }
}

const configureStore = () => createStore(rootReducer, initialState);

export default configureStore;
