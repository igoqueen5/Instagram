class CreatePicts < ActiveRecord::Migration
  def change
    create_table :picts do |t|
      t.text :comment
      t.string :picture

      t.timestamps null: false
    end
  end
end
