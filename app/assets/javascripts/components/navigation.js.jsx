/* globals React */
'use strict';

var Navigation = React.createClass({
  render: function () {
    return (
        <div>
          <NavLink name='Home' url='/' />
          <NavLink name='Sign Up' url='/users/new' />
          <NavLink name='Cheese Index' url='/cheeses' />
          <NavLink name='New Cheese' url='/cheeses/new' />
          <NavLink name='Logout' url='/logout' />
        </div>
      );
  },
});

var NavLink = React.createClass({
  render: function () {
    return (<a onClick={this.clicked} className='btn btn-default'>{this.props.name}</a>);
  },

  clicked: function () {
    window.location.href = this.props.url;
  }
});
