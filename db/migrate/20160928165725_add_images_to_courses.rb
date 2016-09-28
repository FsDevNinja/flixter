class AddImagesToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :Image, :string
  end
end
