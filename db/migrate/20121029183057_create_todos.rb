class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :tytul
      t.text :opis
      t.datetime :deadline
      t.integer :priorytet

      t.timestamps
    end
  end

  def self.up
    add_attachment :users, :avatar
  end

  def self.down
    remove_attachment :users, :avatar
  end
end
