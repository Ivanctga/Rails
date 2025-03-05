class AddAuthorReferenceToAddress < ActiveRecord::Migration[8.0]
  def change
    add_reference :addresses, :author, null: false, foreign_key: true
  end
end
