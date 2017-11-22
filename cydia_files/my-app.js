// Initialize your app
var myApp = new Framework7({
    animateNavBackIcon:true
});

// Export selectors engine
var $$ = Dom7;

// Add main View

	

// var myApp = new Framework7(); 

 $(document).ready(function(){
 	$('.my').hide();
 });

	$('#serachme').keyup(function() {
    if($(this).val() == ''){
    	
    	$('.my').hide();
    }else{
    	
    	$('.my').show();
    }
}); 


/*  var mySearchbar = app.searchbar('.searchbar', {
          searchList: '.list-block',
          searchIn: '.item-inner'
      });   */



// var inputbox = document.getElementById('serachme')
// {
// 	inputbox.onkeyup = function () {
// 		document.getElementById('my') = show;
// 	}
// }

var mySearchbar = $$('.searchbar')[0].f7Searchbar;
 
// Now you can use it
mySearchbar.search();
searchList: '.list-block';
searchIn: '.item-inner';