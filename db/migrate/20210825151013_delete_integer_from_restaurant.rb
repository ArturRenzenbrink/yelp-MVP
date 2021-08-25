class DeleteIntegerFromRestaurant < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :integer
  end
end
