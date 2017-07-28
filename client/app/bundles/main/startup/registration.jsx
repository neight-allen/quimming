import ReactOnRails from 'react-on-rails';

import Player from '../components/player';
import Match from '../components/match';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  Player,
  Match,
});
