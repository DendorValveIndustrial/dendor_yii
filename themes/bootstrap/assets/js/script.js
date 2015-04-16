var mainMenu = document.getElementById( 'mainMenu' ),
    mainMenuShow = document.getElementById( 'mainMenuShow' ),
    body = document.body;

mainMenuShow.onclick = function() {
  classie.toggle( this, 'active-menu' );
  classie.toggle( mainMenu, 'open' );
  disableOther( 'mainMenuShow' );
};

function disableOther( button ) {
  if( button !== 'mainMenuShow' ) {
    classie.toggle( mainMenuShow, 'disabled' );
  }
}
