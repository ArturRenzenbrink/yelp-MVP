class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :adress
      t.string :phone_number
      t.string :integer
      t.string :category

      t.timestamps
    end
  end
end
