import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import actions from 'actions/helloWorld.actions';
import HelloWorld from './HelloWorld.component';

const mapStateToProps = (state, props) => ({
  ...state.helloWorld
});

const mapDispatchToProps = dispatch => ({
  actions: bindActionCreators(actions, dispatch),
});

export default connect(mapStateToProps, mapDispatchToProps)(HelloWorld);
