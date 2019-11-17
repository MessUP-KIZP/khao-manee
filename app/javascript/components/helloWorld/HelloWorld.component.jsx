import React from "react"
import PropTypes from "prop-types"

class HelloWorld extends React.Component {
  constructor(props) {
    super(props)
    this.state = { text: '' }
  }

  onChange = (event) => {
    const text = event.target.value;

    this.setState(() => ({ text }))
  }

  onKeyDown = (event) => {
    if (event.key === 'Enter') {
      this.setText(this.state.text);
    }
  }

  onSubmit = (event) => {
    event.preventDefault();

    this.setText(this.state.text);
  }

  setText = (value) => this.props.actions.doAction(value);

  render () {
    const { actions, text } = this.props

    return (
      <React.Fragment>
        <form onSubmit={ this.onSubmit }>
          <label htmlFor="greeting-input">Identify yourself </label>
          <input type="text" id="greeting-input" onChange={ this.onChange } />
          <button type="submit">Submit name</button>
        </form>
        <p>Greeting: { text }</p>
      </React.Fragment>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};

export default HelloWorld
