class AddTagsToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :tags, :string
  end
end
