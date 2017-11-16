'use strict';

(function (exports) {

  function attachEventListeners() {
    window.addEventListener('submit', submitReview);
  };

  function submitReview(event) {
    event.preventDefault();
    postReview(event.target)
  }

  function postReview(form) {
    
    var xhr = new XMLHttpRequest();  

    var request = form.action;
    var rating = form['review[rating]'].value
    var review = form['review[review]'].value
    var authenticity_token = form['authenticity_token'].value

    var data = {
      "utf8": "✓",
      "authenticity_token": authenticity_token,
      "review": {
        "rating": rating,
        "review": review
      },
      "commit": "submit"
    }
  
    xhr.onload = function () {
      if (xhr.status === 200) {
        updateReviews(xhr.response);
      }
      else {
        alert('Request failed.  Returned status of ' + xhr.status);
      }
    };
      
    xhr.open('POST', request);
    xhr.setRequestHeader("Content-type", "application/json");
    xhr.responseType = "json";
    xhr.send(JSON.stringify(data));  
  }
      
  function updateReviews() {
        // code to execute after creating review here
      }
      
      exports.reviews = {
    attachEventListeners: attachEventListeners
  }

})(this);
