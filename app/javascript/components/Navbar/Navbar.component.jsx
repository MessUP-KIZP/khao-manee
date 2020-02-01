import React from "react"

export default class Navbar extends React.Component {
  constructor(props) {
    super(props)
    this.state = { text: '' }
  }

  render() {
    return (
      <nav class="dig-navbar">
        Navbar
      </nav>
    );
  }
}
