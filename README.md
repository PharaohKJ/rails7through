# HOW TO TEST

```
$ bundle exec  rails c
> User.create(name: 'kato')
> Book.create(title: 'myBook')
> BookShelf.create(user_id: User.first.id, book_id: Book.first.id)
> User.first.books
> User.create(name: 'no-book-kato')
> User.last.books
  User Load (0.2ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
  Book Load (0.1ms)  SELECT "books".* FROM "books" INNER JOIN "book_shelves" ON "books"."id" = "book_shelves"."book_id" WHERE "book_shelves"."user_id" = ? /* loading for pp */ LIMIT ?  [["user_id", 2], ["LIMIT", 11]]
=> []
```

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
