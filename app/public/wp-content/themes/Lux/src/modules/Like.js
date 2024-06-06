import $ from 'jquery';

class Like{
    constructor(){
        this.events();
    }
    events(){
        $(".like-box").on("click", this.likeClick.bind(this));
    }

    //methods
    likeClick(e){
        var currentLikeBox = $(e.target).closest(".like-box");
        if (currentLikeBox.data('exists')=='yes'){
            this.deleteLike(currentLikeBox);
        }else{
            this.createLike(currentLikeBox);
        }
    }
    createLike(currentLikeBox){
        $.ajax({
            // url: x,
            // type: 'POST',
            // success: x, 
            // error: x

            /*
            - below we will pass {'professorID': 789} Hardcoded Id for testing. Now path to retrive the id of Professor. 
            - HTML of like of single professor, already passed data-exists,
            1. add data-professor and pass ID using php
            2. check id using inspect
            3. In Like.js currentLikeBox holds all the value, so pass in this.deleteLike and create like, and use that below too
             */
            beforeSend: (xhr) => {
                xhr.setRequestHeader("X-WP-Nonce", luxData.nonce);
              },
            url: luxData.root_url+'/wp-json/lux/v1/manageLike',
            type: 'POST',
            data: {'professorID': currentLikeBox.data('professor')},
            success: (response)=> {
                console.log(response); //start with consoling response
            },
            error: (response)=> {
                console.log(response);
            }
        })
        console.log("Create Like")
    }
    deleteLike(){
        $.ajax({
            url: luxData.root_url+'/wp-json/lux/v1/manageLike',
            type: 'DELETE',
            success: (response)=> {
                console.log(response); //start with consoling response
            },
            error: (response)=> {
                console.log(response);
            }
        })
        console.log("Delete Like")
    }

}

export default Like;