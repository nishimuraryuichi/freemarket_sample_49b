# README

#Table

## products
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false,default: 0|
|brand_id|references||
|user_id|references||
|category_par_id|references||
|category_id|references||
|category_child_id|references||
|status|string|null:false|
|delivery_fee|integer|null:false|
|delivery_time|integer|null:false|
|detail|string|null:false|


## brands
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

## category_pars
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

## category
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|category_par_id|references||

## category_child
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|category_id|references||