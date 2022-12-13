# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

##　Setup

初期化
```
bundle install
bin/rails db:drop db:create db:setup
bin/rails s
```

サーバー起動
```
bin/rails s
```

railsコンソール
```
bin/rails c
```

rubocop
```
bundle exec rubocop
```

## Model 一覧
* ユーザー(User)
```
bin/rails g model User gid:string name:string identification:integer
```
* ユーザー個人情報(UserPersonal)
```
bin/rails g model UserPersonal user:references first_name:string last_name:string reading_first_name:string reading_last_name:string sex:integer age:integer birthday:datetime address:string
```

## Web API 一覧
* ユーザ個人情報
  * 登録
    * POST api/user_personals
  * 更新
    * PATCH api/users/:gid/user_personals

* ユーザー情報
  * 取得
    * GET api/users/:gid

## Issue List
* specでopenapiフォーマットを利用してjson型チェック
* UserPersonalにemailを追加
* 管理画面の表示内容を調整
* User.identificationを管理画面から設定変更
* 年齢でフィルタ
* 画像で本人確認書類アップロード機能を追加

