document.addEventListener("turbolinks:load",function(){

  function appendCategoryChildren(category){
    let list = `<li class="category-list-3"><a class="inner-header__bottom__left__left__category-lists__list-3__link" data-id="#{" href="/category_children/${category.id}"> ${category.name}</a></li>`;
    $('.inner-header__bottom__left__left__category-lists__list-3').append(list);
  }

  $(document).on('mouseover',".category-list-2",function(){
    let category_children_id = $(this).children().data('id');
    $(this).css({"background-color":"red"});
    $(this).children().css({"color":"white"});
    $(this).siblings().css({'background-color':'white'});
    $(this).siblings().children().css({"color":"black"})
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
