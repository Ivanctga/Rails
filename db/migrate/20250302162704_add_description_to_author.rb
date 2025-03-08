class AddDescriptionToAuthor < ActiveRecord::Migration[8.0]
  def change
    add_column :authors, :description, :string
  end
end
