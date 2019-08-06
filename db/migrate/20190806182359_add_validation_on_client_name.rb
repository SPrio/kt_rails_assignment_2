class AddValidationOnClientName < ActiveRecord::Migration[5.2]
  def change
    change_column :clients, :name, :string, null: false
    add_index :clients, :name, unique: true
  end
end
