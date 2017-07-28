import PropTypes from 'prop-types';
import React from 'react';

export default class Player extends React.Component {
  static propTypes = {
    audioFile: PropTypes.string.isRequired, // this is passed from the Rails view
  };

  render() {
    return (
      <div>
        <audio src={this.props.audioFile} controls loop={true}></audio>
      </div>
    );
  }
}
