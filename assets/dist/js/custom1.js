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
    // jQuery('#sidebarMenu').hide('slow');
    });

jQuery('.upload-bg').on('click', function(){
    jQuery('.upload-bg ul').slideToggle('slow');
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

jQuery('.gridview').on('click', function(){
    jQuery('.rec-view.list').slideUp('300');
    jQuery('.rec-view.grid').delay("300").slideDown('300');
    
});

jQuery('.listview').on('click', function(){
    jQuery('.rec-view.grid').slideUp('300');
    jQuery('.rec-view.list').delay("300").slideDown('300');
});








});