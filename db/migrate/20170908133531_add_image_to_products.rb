class AddImageToProducts < ActiveRecord::Migration[5.1]
  def change
     add_column :recipes, :image, :string
  end
end
