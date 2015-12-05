console.log('connected')
$(document).ready(function() {
	var contAuthButton = $("#contact-author");
	var authModal = $(".modal-container.author");
	var modalCloseButton = $(".close.authors");
	var contEditorButton = $("#contact-editor");
	var editorModal = $(".modal-container.editor");
	var modalEditorCloseButton = $(".close.editor");
	var addCatButton = $("#add-category");
	var addCatForm = $("#category-form");


	var toggleAuthModal = function(){
		authModal.toggle();
	};

	var toggleEditorModal = function(){
		editorModal.toggle();
	};

	var toggleCatForm = function(){
		addCatForm.toggle();
	}

	$('#user').focus();
	$('#f-name').focus();

	contAuthButton.on('click', toggleAuthModal);
	modalCloseButton.on('click', toggleAuthModal);
	contEditorButton.on('click', toggleEditorModal);
	modalEditorCloseButton.on('click', toggleEditorModal);
	addCatButton.on('click', toggleCatForm);




});

