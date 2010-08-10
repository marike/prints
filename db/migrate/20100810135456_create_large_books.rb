class CreateLargeBooks < ActiveRecord::Migration
  def self.up
    create_table :large_books do |t|
      t.string :path
      t.integer :book_id
      t.integer :height
      t.integer :width

      t.timestamps
    end
  end

  def self.down
    drop_table :large_books
  end
end
