const routes = {
  hello: "/hello",
  root: "/",
}

export const api = {
  users: {
    session: {
      new: '/users/sign_in',
      create: '/users/sign_in',
      destroy: '/users/sign_out',
    },
    registration: {
      new: '/users/sign_up',
    },
  },
}

export default routes;
