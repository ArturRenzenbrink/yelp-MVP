class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :contend, :content
    rename_column :restaurants, :adress, :address
  end
end
