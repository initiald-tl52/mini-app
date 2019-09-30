# README
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|index: true,null: false,unique: true|
|email|string|null: false|

### Association
- has_many :blogs

## blogsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|sentence|text|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user