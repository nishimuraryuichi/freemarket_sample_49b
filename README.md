#Table

## user_profilesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true,unique: true|
|introduction|text||
|money|integer|default: 0|
|eva_good|string|default: 0|
|eva_normal|string|default: 0|
|eva_but|string|default: 0|
|user_id|references||

- has_many :products
- has_many :comments
- belongs_to :user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|

- has_one :user_profile, dependent: :nullify

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references||
|product_id|references||
|content|text|null: false|

- belongs_to :user_profile
- belongs_to :product


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
- belongs_to :brand
- belongs_to :user_profile
- belongs_to :category_par
- belongs_to :category
- belongs_to :category_child
- has_many :comments


## brands
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
- has_many :products
- has_many :category_childs

## category_pars
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
- has_many :categories
- has_many :products

## categories
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|category_par_id|references||
- belongs_to :category_par
- has_many :category_childs
- has_many :products

## category_childs
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|category_id|references||
- belongs_to :category
- belongs_to :brand
- has_many :products

