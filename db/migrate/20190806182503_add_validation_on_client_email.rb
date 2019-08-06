class AddValidationOnClientEmail < ActiveRecord::Migration[5.2]
  def change
    change_column :clients, :email, :string, null: false
    add_index :clients, :email, unique: true
  end
end
