class AddPhotoToPicts < ActiveRecord::Migration
  def change
    add_column :picts, :photo, :string
  end
end
