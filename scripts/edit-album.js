$(document).ready(function(){
<<<<<<< HEAD
<<<<<<< HEAD
	alert('hallo');
	// when an album is ajax edited, we need to get some info about the album to populate the modal
	// we start by hijacking the click event
	$('a.edit').on('click',function(event){
		alert('hello');
		event.preventDefault();
=======
	// when an album is ajax edited, we need to get some info about the album to populate the modal
	// we start by hijacking the click event
	$('a.edit').on('click',function(){
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
	// when an album is ajax edited, we need to get some info about the album to populate the modal
	// we start by hijacking the click event
	$('a.edit').on('click',function(){
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		//get the id from the data attribute set on the anchor
		var eid = $(this).attr('data-edit-id');
		//call our ajaxGetAlbumInfo method to return what we need to know about the album being edited
		$.ajax({
			url: '../dashboard/albums/get_album_info',
			type: 'POST',
			data: { id: eid }
			}).done(function(data){
				data = $.parseJSON(data);
			//if we've sucessfully gotten data back we should put said data into a form
				$('#editAlbumForm #modal-album-name').text(data.name);
				$('#editAlbumForm input[name=id]').val(data.id);
				$('#editAlbumForm input[name=owner]').val(data.owner);
				$('#editAlbumForm input[name=name]').val(data.name);
				$('#editAlbumForm textarea').val(data.full_txt);
				if (data.private != 0){
					$('#editAlbumForm input[name=private]').attr('checked',true);
				}	
				$('#editAlbumModal').modal('show');
			});			
			return false;
	});
});