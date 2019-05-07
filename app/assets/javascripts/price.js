$(function(){
  $('#selling-price').on('keyup',function(){
    let input = $('#selling-price').val();
    if (input >= 10000000 || input < 300){
      $('.commission__price').text('-');
      $('.benefit__price').text('-');
    }else if(input >= 300) {
      let commissionPrice = Math.floor(input*0.1);
      $('.commission__price').text('¥'+ commissionPrice.toLocaleString());
      $('.benefit__price').text('¥' + (input - (commissionPrice)).toLocaleString());
    }
  });
});

