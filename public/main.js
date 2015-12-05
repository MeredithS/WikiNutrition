console.log('connected')
$(document).ready(function() {
	var contAuthButton = $("#contact-author");
	var authModal = $(".modal-container.author");
	var modalCloseButton = $(".close.authors");
	var contEditorButton = $("#contact-editor");
	var editorModal = $(".modal-container.editor");
	var modalEditorCloseButton = $(".close.editor");

	var toggleAuthModal = function(){
		authModal.toggle();
	};

	var toggleEditorModal = function(){
		editorModal.toggle();
	};

	contAuthButton.on('click', toggleAuthModal);
	modalCloseButton.on('click', toggleAuthModal);
	contEditorButton.on('click', toggleEditorModal);
	modalEditorCloseButton.on('click', toggleEditorModal);




});

