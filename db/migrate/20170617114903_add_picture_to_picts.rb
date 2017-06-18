class AddPictureToPicts < ActiveRecord::Migration
  def change
    add_column :picts, :picture, :string
  end
end
