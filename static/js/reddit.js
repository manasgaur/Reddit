/**************************************************
					REDDIT VIEW
***************************************************/

$(function(){

	'use strict'

	/* 
	 *	UPDATE WITH NEW SUBREDDIT
	 */
	var update = function(e) {
		getPosts(e.target.value);
	}

	/*
	 *	call the reddit api and get the data 
	 *	the process of sending data would be the same 
	 *	you would need to add "type: POST" to the 
	 *	ajax object.
	 */
	var getPosts = function(query) {
		$.ajax({
			url: '/subreddit/'+query,
			type: "GET",
		})
		.done(function(resp){
			$('#reddit_list').html(resp);
		})
		.fail(function(){
			$('#reddit_list').html('<li>oops... something went wrong</li>');
			return false;
		})
	}

	$('#subreddit').on('change', update);
	getPosts('all');
})


