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

ユーザー(User)
bin/rails g model User gid:string name:string identification:integer

ユーザー個人情報(UserPersonal)
bin/rails g model UserPersonal user:references first_name:string last_name:string reading_first_name:string reading_last_name:string sex:integer age:integer birthday:datetime address:string

ユーザ個人情報
　登録
　　POST api/user_personals
　更新
　　PATCH api/user_personals

ユーザー情報
　取得
　　GET api/users/:gid
