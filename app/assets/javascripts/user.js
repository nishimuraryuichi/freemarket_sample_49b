$(document).on('turbolinks:load', function() {
  let form = $("#charge-form");
  Payjp.setPublicKey('pk_test_2452e72f859ccff652883d93');
  $("#charge-form").on("click", "#submit-button", function(e) {
    e.preventDefault();
    form.find("input[type=submit]").prop("disabled", true);
    let card = {
        number: parseInt($("#payment_card_no").val()),
        cvc: parseInt($("#cvc_code").val()),
        exp_month: parseInt($("#card_expire_mm").val()),
        exp_year: parseInt($("#card_expire_yy").val())
    };
    Payjp.createToken(card, function(s, response) {
      if (response.error) {
        form.find('.payment-errors').text(response.error.message);
        form.find('button').prop('disabled', false);
      }
      else {
        $(".number").removeAttr("name");
        $(".cvc").removeAttr("name");
        $(".exp_month").removeAttr("name");
        $(".exp_year").removeAttr("name");

        var token = response.id;

        form.append($('<input type="hidden" name="payjpToken" />').val(token));
        form.get(0).submit();
      }
    });
  });
});
