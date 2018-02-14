function sendEmail(){
	var thisButton = $('#form-submit');
    alertify.set('notifier','position', 'top-right');

   if(!thisButton.hasClass("loading") && !thisButton.hasClass("done")){
      var frm = $("#contact-form");
      if (!frm[0].checkValidity()) {
      	alertify.error('Please fill all fields required or check the email format.');
        frm.find('input[type=submit]').click()
      } else {
          var data = frm.serializeArray();
          data = data.reduce(function (m, e) { m[e.name] = e.value; return m; }, {});
          $.ajax({
            type: "POST",
            "url": "/api/1/services/mail.json",
            "data": data,
          }).done(function () {
              $('#contact-form')[0].reset();
              alertify.success('Your message was sent');
          }).fail(function (error) {
              alertify.error('There was an error during the action');
              console.error(error);
          }).always(function(){
              setTimeout(function(){
                thisButton.removeClass('done error');
              }, 2000);
          });
      }
    }
}

function dateBannerColor(){
	//Colors banner and button
    var arrayColors = ["tm-bg-pink", "tm-bg-green", "tm-bg-red", "tm-bg-gray"];
    var arrayColorsButton = ["tm-button-pink", "tm-button-green", "tm-button-red", "tm-button-gray"]; 
    $('.tm-timeline-date').each(function(index, element){
      $(element).addClass(arrayColors[index%arrayColors.length]);
    }); 
    
    $('.tm-button-timeline').each(function(index, element){
      $(element).addClass(arrayColorsButton[index%arrayColorsButton.length]);
    });
}

$(document).ready(function() {
	//--------- Page Timeline: Colors banner and button ------
    dateBannerColor();
    
	//--------- Page Contact: Active the Alertify  -------
        
    $("#contact-form").submit(function(e){
      e.preventDefault();
      sendEmail();
    });   

    //--------- Manu: Active the class "active" ------
    var page = window.location.href;
    var arrayPage = page.split('/');

    if(arrayPage[arrayPage.length-1] === ""){
    	$('#btn-timeline').addClass('active');
    } else {
    	$('#btn-'+arrayPage[arrayPage.length-1]).addClass('active');
    }
    
    //--------- Update the current year in copyright -------
     $('.tm-current-year').text(new Date().getFullYear()); 
});