jQuery(document).ready(function(){

jQuery('.column').on('click', function(){      
        jQuery('.column.active').removeClass('active');
        jQuery(this).addClass('active');
        jQuery('.box-ic.active').removeClass('active');
        jQuery('.column.active .box-ic').addClass('active');
        // jQuery('label').removeClass('active');
        // jQuery('.column.active label').addClass('active');
  });

jQuery('.Dropdown-2').on('click', function(){
    jQuery('.Dropdown-content-2').slideToggle('slow');
    jQuery('.upload-bg ul').hide('fast');
    jQuery('.top-slide-drop').hide('fast');
    // jQuery('#sidebarMenu').hide('slow');
    });

jQuery('.upload-bg').on('click', function(){
    jQuery('.upload-bg ul').slideToggle('slow');
    jQuery('.Dropdown-content-2').hide('fast');
    // jQuery('#sidebarMenu').hide('slow');
    });
jQuery('.rws-slider').on('click', function(){
    jQuery('.top-slide-drop').slideToggle('slow');
    jQuery('.Dropdown-content-2').hide('fast');
    // jQuery('#sidebarMenu').hide('slow');
    });

// jQuery('.navbar-toggler').on('click', function(){
//     jQuery('#sidebarMenu').slideToggle('slow');
//     jQuery('.Dropdown-content-2').hide('slow');
//     jQuery('.upload-bg ul').hide('slow');

//     });

jQuery('.cal-year').on('click', function(){
    jQuery('.cal-year-date').hide();
    jQuery(this).next('.cal-year-date').slideToggle('slow');
    });

jQuery('.selectall').click(function() {
    if (jQuery(this).is(':checked')) {
        jQuery('div input').attr('checked', true);
    } else {
        jQuery('div input').attr('checked', false);
    }
});

//jQuery('.gridview').on('click', function(){
  //  jQuery('.rec-view.list').slideUp('100');
  //  jQuery('.rec-view.grid').delay("100").slideDown('100');
    
//});

//jQuery('.listview').on('click', function(){
 //   jQuery('.rec-view.grid').slideUp('100');
  //  jQuery('.rec-view.list').delay("100").slideDown('100');
//});

jQuery('.gridview').click(function() {
	//alert('a');
	jQuery('.rec-view.list').hide();
	// jQuery('.rec-view.list').toggle("slide", { direction: "right" }, 1000);
  //jQuery('.rec-view.grid').slideToggle(1000);
		jQuery('.rec-view.grid').show();
		 
		  
    
});
jQuery('.listview').click(function() {
//	alert('a');
	jQuery('.rec-view.grid').hide();
   //jQuery('.rec-view.list').slideToggle(1000);
  	jQuery('.rec-view.list').show(100);
    
});






});