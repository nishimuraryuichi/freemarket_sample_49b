#Table

## profilesテーブル

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
|profile_id|references||
|product_id|references||
|content|text|null: false|

- belongs_to :user_profile
- belongs_to :product


## products
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false,default: 0|
|status|string|null:false|
|delivery_fee|integer|null:false|
|delivery_time|integer|null:false|
|detail|text|null:false|
|brand_id|references||
|profile_id|references||
|category_parents_id|references||
|category_id|references||
|category_child_id|references||
- belongs_to :brand
- belongs_to :user_profile
- belongs_to :category_parents
- belongs_to :category
- belongs_to :category_child
- has_many :comments


## brands
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
- has_many :products
- has_many :category_childs

## category_parents
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
- has_many :categories
- has_many :products

## categories
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|category_parents_id|references||
- belongs_to :category_parent
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

