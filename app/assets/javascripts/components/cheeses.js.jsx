/* globals React */
'use strict';
var makeFavorite = React.createClass({
  getInitialState: function () {
    return {
      isFavorite: false
    };
  },

  render: function () {
    if (this.state.isFavorite) {
      return (
        <div>
          <div className='btn btn-danger' onClick={this.handleClick}>Remove as Favorite</div>
          <span>Favorite!</span>
        </div>
      );
    } else {
      return (
        <div className='btn btn-primary' onClick={this.handleClick}>Mark as Favorite</div>
        );
      }
    },

  handleClick: function () {
    if (this.state.isFavorite) {
      this.setState({ isFavorite: false });
    } else {
      this.setState({ isFavorite: true });
    }
  }
});
