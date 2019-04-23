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
|email|string|null: false|
|password|string|null: false|

- belongs_to :user


## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references||
|product_id|references||
|content|text|null: false|

- belongs_to :user
- has_many :products

