$(document).ready(function(){

	// taking search and making api call to itunes
	// $('#search').keyup(function(){
	// 	search($(this).val());
	// })
	// function search(query){
	// 	$.getJSON("https://itunes.apple.com/search?term",{
	// 		t :query
	// 	},{

	// 	}
	// 	function(search){
	// 		$('#results').innerHTML(response.movie)
	// 	});
	// }
	$('#results').click(function(){
    var media = "movie";  
    var limit = 1;  
    var thing = document.getElementById('search').value;
    // var whatosearch = $('#search').attr('value'); 

    function itunes(searching){
    	return $.getJSON("http://itunes.apple.com/search?term=" + thing + "&country=us&limit=" + limit + "&media=" + media + "&callback=?",function(data) {  
	      	name = data["results"][0].movie;
	      	console.log(name)
	    	});
    }

    function createList(name){
      var list = new Array();
      list.push(name);
      return list.length;
    };
    
  });


})


