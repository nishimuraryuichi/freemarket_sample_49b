## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true,unique: true|
|profile|text||
|money|integer||
|evaluation|string||

- has_many :products
- has_meny :comments

## user_loginテーブル

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

