import { FOO } from 'types/helloWorld.types';

export const doAction = (text) => {
  return {
    type: FOO,
    payload: { text },
  };
};

export default { doAction };
