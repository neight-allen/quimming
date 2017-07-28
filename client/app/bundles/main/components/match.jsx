import PropTypes from 'prop-types';
import React from 'react';
import Player from './Player'

export default class Match extends React.Component {
  static propTypes = {
    clipAUrl: PropTypes.string.isRequired,
    clipBUrl: PropTypes.string.isRequired,
    clipAId: PropTypes.number.isRequired,
    clipBId: PropTypes.number.isRequired,
  };

  voteA() {
    this.createMatch(this.props.clipAId, this.props.clipBId)
  }

  voteB() {
    this.createMatch(this.props.clipBId, this.props.clipAId)
  }

  createMatch(winner_id, loser_id) {
    // console.log({winner_id: winner_id, loser_id: loser_id})
    var myHeaders = new Headers();
    myHeaders.append('Content-Type', 'application/json');
    fetch("/api/v1/matches", {
      method: "POST",
      body: JSON.stringify({winner_id: winner_id, loser_id: loser_id}),
      headers: myHeaders,
    })
      .then(resp => console.log(resp.json()) )
  }

  render() {
    return (
      <div>
        <Player audioFile={this.props.clipAUrl} /><br />
        <button onClick={this.voteA.bind(this)} >Vote A</button><br />
        <Player audioFile={this.props.clipBUrl} /><br />
        <button onClick={this.voteB.bind(this)} >Vote B</button><br />
      </div>
    );
  }
}
