## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true,unique: true|
|profile|text||
|money|integer|default: 0|
|eva_good|string|default: 0|
|eva_normal|string|default: 0|
|eva_but|string|default: 0|

- has_many :products
- has_many :comments

## users_loginテーブル

|Column|Type|Options|
|------|----|-------|
|email|text|null: false|
|password|integer|null: false|

- belongs_to :user


## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references||
|products_id|references||
|contents|text|null: false|

- belongs_to :user
- has_many :products

