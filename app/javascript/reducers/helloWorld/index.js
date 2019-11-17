import types from 'types/helloWorld.types';
import initialState from './initialState';
import helper from './helper';

const helloWorld = (state = initialState, action) => {
  switch (action.type) {
    case types.FOO:
      return helper.setText(state, action);
    default:
      return state;
  }
};

export default helloWorld;
