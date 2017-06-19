class CreatePicts < ActiveRecord::Migration
  def change
    create_table :picts do |t|
      t.text :comment
      t.string :photo

      t.timestamps null: false
    end
  end
end
