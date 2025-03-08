class RemoveDescriptionFromAuthor < ActiveRecord::Migration[8.0]
  def change
    remove_column :authors, :description, :string
  end
end
