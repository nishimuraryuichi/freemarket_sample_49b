document.addEventListener("turbolinks:load",function(){


// 以下出品ページのカデゴリ選択

// 小カデゴリを挿入
function appendSelectChild(){
  let html =`<select class="inputs__form-select category-child-select-form" name="product[category_child_id]" id="product_category-child_id"></select>`
  $(".category-select-inputs-detail").append(html);
}

function appendOptoionsChild(category_child){
  let option = `<option value=${category_child.id}>${category_child.name}</option>`
  $(".category-child-select-form").append(option)
}


$(document).on("change",".category-select-form",function(){
  category_id = $(".category-select-form").val();
  $.ajax({
    url:  "/category_children/new",
    type: "GET",
    data: {id: category_id},
    dataType: 'json'
   })
   .done(function(category_children){
     $(".category-child-select-form").remove();
     console.log(category_children);
    if( category_children.length !== 0){
      appendSelectChild();
      category_children.forEach(function(category_child){
      appendOptoionsChild(category_child);
      });
    }
    })
   .fail(function(){
     alert('エラーです');
   })
   .always(() => {
   })
})



// 中カデゴリセレクトを挿入
  function appendSelect(){
    let html =`<select class="inputs__form-select category-select-form" name="product[category_id]" id="product_category_id"></select>`
    $(".category-select-inputs-detail").append(html);
  }

  function appendOptoions(category){
    let option = `<option value=${category.id}>${category.name}</option>`
    $(".category-select-form").append(option)
  }


  $(".parent-category-select-form").change(function(){
    parent_category_id = $(".parent-category-select-form").val();
    $.ajax({
      url:  "/categories/new",
      type: "GET",
      data: {id: parent_category_id},
      dataType: 'json'
     })
     .done(function(categories){
       $(".category-select-form").remove();
       $(".category-child-select-form").remove();
       appendSelect();
       categories.forEach(function(category){
       appendOptoions(category);
       });
     })
     .fail(function(){
       alert('エラーです');
     })
     .always(() => {
     })
  })



// 以下トップページのカデゴリ表示

  $(document).on('mouseover',".category-list-3",function(){
    $(this).css({"background-color":"#DDDDDD"});
    $(this).siblings().css({'background-color':'white'});
  });


  function appendCategoryChildren(category){
    let list = `<li class="category-list-3"><a class="inner-header__bottom__left__left__category-lists__list-3__link" data-id="#{" href="/category_children/${category.id}"> ${category.name}</a></li>`;
    $('.inner-header__bottom__left__left__category-lists__list-3').append(list);
  }
  $(document).on('mouseover',".category-list-2",function(){
    let category_children_id = $(this).children().data('id');
    $(this).css({"background-color":"#DDDDDD"});
    $(this).siblings().css({'background-color':'white'});
    $.ajax({
     url:  "/category_children",
     type: "GET",
     data: {id: category_children_id},
     dataType: 'json'
    })
    .done(function(category_children){
      $(".category-list-3").remove();
      category_children.forEach(function(category_child){
      appendCategoryChildren(category_child);
      });
    })
    .fail(function(){
      alert('エラーです');
    })
    .always(() => {
    })
  });


  function appendCategory(category){
    let list = `<li class="category-list-2"><a class="inner-header__bottom__left__left__category-lists__list-2__link" data-id="${category.id}" href="/categories/${category.id}"> ${category.name}</a></li>`;
    $('.inner-header__bottom__left__left__category-lists__list-2').append(list);
  }

  $(".category-list-1").hover(function(){
    let category_id = $(this).children().data('id');
    $(this).css({"background-color":"red"});
    $(this).children().css({"color":"white"});
    $(this).siblings().css({'background-color':'white'});
    $(this).siblings().children().css({"color":"black"})
    $.ajax({
     url:  "/categories",
     type: "GET",
     data: {id: category_id},
     dataType: 'json'
    })
    .done(function(categories){
      $(".category-list-2").remove();
      $(".category-list-3").remove();
      categories.forEach(function(category){
            appendCategory(category);
      });
    })
    .fail(function(){
      alert('エラーです');
    })
    .always(() => {
    })
  });
});
