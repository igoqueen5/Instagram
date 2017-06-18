class AddUserIdToPicts < ActiveRecord::Migration
  def change
    add_column :picts, :picture, :user_id, :integer
  end
end
