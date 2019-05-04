$(function(){
  $('#selling-price').on('keyup',function(){
    let input = $('#selling-price').val();
    console.log(input);
    if (input >= 300) {
      let commissionPrice = Math.floor(input*0.1);
      $('.commission__price').text(commissionPrice);
      console.log(input);
      console.log(input * 0.9);
      $('.benefit__price').text(input - (commissionPrice));
    }else{
      $('.commission__price').text('-');
      $('.benefit__price').text('-');
    }
  });
});