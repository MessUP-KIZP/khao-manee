export const setText = (state = {}, action) => {
  if (action && action.payload) {
    return { ...state, text: action.payload.text };
  }

  return state
}

export default {
  setText,
}
