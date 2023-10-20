# HOW TO TEST

```
$ bundle exec  rails c
> User.create(name: 'kato')
> Book.create(title: 'myBook')
> BookShelf.create(user_id: User.first.id, book_id: Book.first.id)
> User.first.books
> User.create(name: 'no-book-kato')
> User.last.books
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
