#
#
#

$ ->
	$('#products').imagesLoaded ->
	 $('#products').masonry
	 itemSelector: '.box'
	 isFitWidth: true

