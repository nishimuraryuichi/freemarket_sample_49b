<<<<<<< HEAD
document.addEventListener('turbolinks:load',function(){
=======
document.addEventListener("turbolinks:load",function(){
>>>>>>> development
  var count_disp1=document.getElementById("disp_count1");
  var count_disp2=document.getElementById("disp_count2");
  var count_disp3=document.getElementById("disp_count3");
  var eva_good_btn=document.getElementById("eva_good");
  var eva_normal_btn=document.getElementById("eva_normal");
  var eva_but_btn=document.getElementById("eva_but");
  var count_value1=0;
  var count_value2=0;
  var count_value3=0;

  eva_good_btn.onclick=function(){
    count_value1 += 1;
    count_disp1.innerHTML=count_value1;
  }
  eva_normal_btn.onclick=function(){
    count_value2 += 1;
    count_disp2.innerHTML=count_value2;
  }
  eva_but_btn.onclick=function(){
    count_value3 += 1;
    count_disp3.innerHTML=count_value3;
  }
<<<<<<< HEAD
}, false);
=======


});
>>>>>>> development
