
  $(document).ready(function(){
    $('.sclick-carrousel').slick({
      dots: true,
      centerMode: false,
      centerPadding: '60px',
      slidesToShow: 4,
      focusOnSelect: true,
      variableWidth: true,
      responsive: [
        {
          breakpoint: 768,
          settings: {
            dots: true,
            arrows: false,
            centerMode: true,
            centerPadding: '40px',
            slidesToShow: 5,
            focusOnSelect: true,
            variableWidth: true,
          }
        },
        {
          breakpoint: 480,
          settings: {
            dots: true,
            arrows: false,
            centerMode: true,
            centerPadding: '40px',
            slidesToShow: 1,
            focusOnSelect: true,
            variableWidth: true,
          }
        }
      ]
    });
  });