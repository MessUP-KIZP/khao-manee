import React from "react"
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import actions from 'actions/helloWorld.actions';
import Navbar from './Navbar.component';

const mapStateToProps = (state, props) => ({
  ...state.helloWorld
});

const mapDispatchToProps = dispatch => ({
  actions: bindActionCreators(actions, dispatch),
});

const NavbarContainer = connect(mapStateToProps, mapDispatchToProps)(Navbar);

export default NavbarContainer;
