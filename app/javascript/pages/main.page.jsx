import React from "react"
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import actions from 'actions/helloWorld.actions';
import Navbar from 'components/Navbar/Navbar.container';
import Footer from 'components/Footer/Footer.component';

const mapStateToProps = (state, props) => ({
});

const mapDispatchToProps = dispatch => ({
});


export class MainPage extends React.Component {
  render () {
    return (
      <>
        <Navbar />
        <div className="main">
          MAIN
        </div>
        <Footer />
      </>
    );
  }
}

const MainPageContainer = connect(mapStateToProps, mapDispatchToProps)(MainPage);

export default MainPageContainer;
