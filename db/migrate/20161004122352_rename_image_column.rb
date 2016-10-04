class RenameimageColumn < ActiveRecord::Migration
  def change
    rename_column :courses, :image, :image
  end
end
