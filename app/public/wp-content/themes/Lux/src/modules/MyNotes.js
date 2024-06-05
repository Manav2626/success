import $ from "jquery";
class MyNotes {
  constructor() {
    this.events();
  }
  events() {
    //changeing slectort from .delete-note edit and update  to id my notes so that newly created notes can be perfom edit or delete
    $("#my-notes").on("click", ".delete-note", this.deleteNote.bind(this)); 
    $("#my-notes").on("click",".edit-note", this.editNote.bind(this));
    $("#my-notes").on("click", ".update-note", this.updateNote.bind(this));
    $(".submit-note").on("click", this.createNote.bind(this));

  }
  //methods will go here

  editNote(e) {
    var thisNote = $(e.target).parents("li");
    if(thisNote.data("state")=="editable"){
      //make read only
      this.makeNotesReadOnly(thisNote);
    }else{
      //make editable
      this.makeNotesEditable(thisNote);
    }
  }

  makeNotesEditable(thisNote) {
    thisNote.find(".edit-note").html('<i class="fa fa-times" aria-hidden="true"> Cancel</i>')
    thisNote.find(".note-title-field, .note-body-field").removeAttr("readonly").addClass("note-active-field");
    thisNote.find(".update-note").addClass("update-note--visible");
    thisNote.data("state", "editable");
  };
  makeNotesReadOnly(thisNote) {
    thisNote.find(".edit-note").html('<i class="fa fa-pencil" aria-hidden="true"> Edit</i>')
    thisNote.find(".note-title-field, .note-body-field").attr("readonly", "readonly").removeClass("note-active-field");
    thisNote.find(".update-note").removeClass("update-note--visible");
    thisNote.data("state", "anythingButEditable");
  };

  deleteNote(e) {
    var thisNote = $(e.target).parents("li");
    $.ajax({
      beforeSend: (xhr) => {
        xhr.setRequestHeader("X-WP-Nonce", luxData.nonce);
      },
      url: luxData.root_url + "/wp-json/wp/v2/note/"+thisNote.data('id'),
      type: "DELETE",
      success: (response) => {
        thisNote.slideUp();
        console.log("Congrates");
        console.log(response);
      },
      error: (response) => {
        console.log("Sorry");
        console.log(response);
      },
    });
  }
  updateNote(e) {
    var thisNote = $(e.target).parents("li");
    var ourUpdatedPost = {
      'title': thisNote.find('.note-title-field').val(),
      'content': thisNote.find('.note-content-field').val(),
      'status': 'publish'
    }
    $.ajax({
      beforeSend: (xhr) => {
        xhr.setRequestHeader("X-WP-Nonce", luxData.nonce);
      },
      url: luxData.root_url + "/wp-json/wp/v2/note/"+thisNote.data('id'),
      type: "POST",
      //now we need to send data too, with POST request
      data: ourUpdatedPost,
      success: (response) => {
        
        console.log("Congrates");
        console.log(response);
        this.makeNotesReadOnly(thisNote);
      },
      error: (response) => {
        console.log("Sorry");
        console.log(response);
      },
    });
  }
  createNote(e) {
    
    var ourNewPost = {
      'title': $(".new-note-title").val(),
      'content': $(".new-note-body").val(),
      'status': 'publish' //default is draft, this changes default to published
      /*
      - but now we want to make all post private by default for security reasons so change publish -> private
      - One step further, someone can change client side settings private to publish, and that's security breach.  
      - So it's better to set private method on server side. Can be achived from Functions*/
    
      
    }
    $.ajax({
      beforeSend: (xhr) => {
        xhr.setRequestHeader("X-WP-Nonce", luxData.nonce);
      },
      url: luxData.root_url + "/wp-json/wp/v2/note/",
      type: "POST",
      //now we need to send data too, with POST request
      data: ourNewPost,
      success: (response) => {
        $(".new-note-title, .new-note-body").val(""); //for clearing out the title and body

        //below, we are using <li> from page-my-notes, and the method to get the information is from wordpress api response. If we console than we'll get most of info including id in the resoponse. SO use response.id and etc
        $(`
            <li data-id="${response.id}"> 
                    <input readonly class="note-title-field" value="${response.title.raw}">
                    <span class="edit-note"><i class="fa fa-pencil" aria-hidden="true"> Edit</i></span>
                    <span class="delete-note"><i class="fa fa-trash-o" aria-hidden="true"> Delete</i></span>
                    <textarea readonly class="note-body-field">${response.content.raw}</textarea>
                    <span class="update-note btn btn--blue btn--small"><i class="fa fa-arrow-right" aria-hidden="true"> Save</i></span>
                </li>
        `).prependTo("#my-notes").hide().slideDown();
        console.log("Congrates");
        console.log(response);
        
      },
      error: (response) => {
        console.log("Sorry");
        console.log(response);
      },
    });
  }
}

export default MyNotes;
