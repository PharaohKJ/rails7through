class CreateBookShelves < ActiveRecord::Migration[7.1]
  def change
    create_table :book_shelves do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end