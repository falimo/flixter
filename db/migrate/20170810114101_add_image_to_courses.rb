class AddImageToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :image_string, :string
  end
end
