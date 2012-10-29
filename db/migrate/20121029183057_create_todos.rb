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
end
