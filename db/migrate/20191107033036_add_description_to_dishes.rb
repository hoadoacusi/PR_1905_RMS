class AddDescriptionToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :description, :string
  end
end
