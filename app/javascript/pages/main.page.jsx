import React from "react"
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import actions from 'actions/helloWorld.actions';

const mapStateToProps = (state, props) => ({
  ...state.helloWorld
});

const mapDispatchToProps = dispatch => ({
  actions: bindActionCreators(actions, dispatch),
});


export class MainPAge extends React.Component {
  constructor(props) {
    super(props)
    this.state = { text: '' }
  }

  render () {
    const {} = this.props

    return (
      <React.Fragment>
        <Navbar />
        <div class="main">
          MAIN
        </div>
        <Footer />
      </React.Fragment>
    );
  }
}

const MainPageContainer = connect(mapStateToProps, mapDispatchToProps)(MainPage);

export default MainPageContainer;
