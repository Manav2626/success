import $ from 'jquery';
class Search{
    constructor(){
        this.addSearchHTML();
        this.reasultDiv = $("#search-overlay_results");
        this.openButton = $(".js-search-trigger");
        this.closeButton = $(".search-overlay__close");
        this.searchField = $("#search-term");
        this.searchOverlay = $(".search-overlay");
        this.typingTimer;
        this.events();
        this.isOverlayOpen = false;
        this.spinnerVisible = false;
        this.previousValue;
    }
    //events

    events(){
        this.openButton.on("click", this.openOverlay.bind(this));
        this.closeButton.on("click", this.closeOverlay.bind(this));
        $(document).on("keydown", this.keyPressDispatcher.bind(this));
        this.searchField.on("keyup", this.typingLogic.bind(this));
    }

    //methods
//f = 70
//esc = 27

     
    typingLogic(){

        if(this.searchField.val()){
            if(this.searchField.val() != this.previousValue){
                clearTimeout(this.typingTimer);
                if(!this.spinnerVisible){
                    this.reasultDiv.html('<div class="spinner-loader"></div>');
                    this.spinnerVisible = true;
                }
                this.typingTimer = setTimeout(this.getReasults.bind(this), 750);
            }

        }else{
            this.reasultDiv.html('');
            this.spinnerVisible = false;
        }

        

        this.previousValue = this.searchField.val();
    }

    getReasults(){
        $.getJSON(luxData.root_url+'/wp-json/lux/v1/search?term='+this.searchField.val(), (result)=>{
            this.reasultDiv.html(`
            
            <div class="row">
                <div class="one-third">
                    <h2 class="search-overlay__section-title">Genaral Information</h2>
                    ${result.generalInfo.length ? '<ul class="link-list min-list">' : '<p> No general information matched that search </p>'}
                    ${result.generalInfo.map(item => `<li><a href="${item.url}">${item.title}</a> ${item.type == 'post'? `by ${item.authorName}` : ''}</li>`).join('')}
                    ${result.generalInfo.length ? '</ul>' : ''}
                </div>
                <div class="one-third">
                <h2 class="search-overlay__section-title">Programs</h2>
                ${result.programs.length ? '<ul class="link-list min-list">' : '<p> No program matched that search <a href="${luxData.root_url}/programs">View All Programs</a> </p>'}
                    ${result.programs.map(item => `<li><a href="${item.url}">${item.title}</a> ${item.type == 'post'? `by ${item.authorName}` : ''}</li>`).join('')}
                    ${result.programs.length ? '</ul>' : ''}

                <h2 class="search-overlay__section-title">Professors</h2>
                    ${result.professors.length ? '<ul class="professor-card">' : ''}
                    ${result.professors.map(item => `
                    <li class="professor-card__list-item">
                        <a class="professor-card" href="${item.link}?>">
                
                    <img class="professor-card__image" src="${item.image}" alt="">
                    <span class="professor-card__name"><?php the_title(); ?></span>
                </a></li>
                    `).join('')}
                    ${result.professors.length ? '</ul>' : ''}
                </div>
                <div class="one-third">

                <h2 class="search-overlay__section-title">Events</h2>
                
                ${result.events.length ? '' : '<p> No Events matched that search </p>'}
                    ${result.events.map(item => `<div class="event-summary">
                    <a class="event-summary__date t-center" href="${item.link}">
                      <span class="event-summary__month">${item.month}</span>
                      <span class="event-summary__day">${item.day}</span>
                    </a>
                    <div class="event-summary__content">
                      <h5 class="event-summary__title headline headline--tiny"><a href="${item.link}">${item.title}</a></h5>
                      <p>${item.description}
                          <a href="${item.link}" class="nu gray">Read more</a></p>
                        <?php } ?> 
                    </div>
                  </div>
                  `).join('')}
                    ${result.events.length ? '</ul>' : ''}
                </div>
            </div> 
            `)
            this.spinnerVisible = false
        })  

        
    }

    keyPressDispatcher(e){
        if(e.keyCode == 70 && !this.isOverlayOpen && !$("input, textarea").is(':focus')){
            this.openOverlay();         
        }
        if(e.keyCode == 27 && this.isOverlayOpen){
            this.closeOverlay();
            
        }
    }
    openOverlay(){
        this.searchOverlay.addClass("search-overlay--active");
        $("body").addClass("body-no-scroll")
        this.searchField.val('')
        setTimeout(()=>this.searchField.focus(), 301);
        console.log("Open")
        this.isOverlayOpen = true;
        // return false;
    }
    closeOverlay(){
        this.searchOverlay.removeClass("search-overlay--active");
        $("body").removeClass("body-no-scroll")
        console.log("Close");
        this.isOverlayOpen = false;
    }

    addSearchHTML(){
        $("body").append(`<div class="search-overlay">
        <div class="search-overlay__top">
          <div class="container">
            
            <i class="fa fa-search search-overlay__icon" aria-hidden="true"></i>
            <input type="text" id="search-term" class="search-term" placeholder="What would you like to search?">
            <i class="fa fa-window-close search-overlay__close " area-hidden="true" ></i>
          </div>
        </div>
        <div class="container">
          <div id="search-overlay_results">
            
          </div>
        </div>
      
      </div>`)
    }
}

export default Search;