class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :style
      t.float :average_rating

      t.timestamps
    end
  end
end
