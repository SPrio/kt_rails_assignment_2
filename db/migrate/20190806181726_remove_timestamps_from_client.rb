class RemoveTimestampsFromClient < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :created_at, :string
    remove_column :clients, :updated_at, :string
  end
end
