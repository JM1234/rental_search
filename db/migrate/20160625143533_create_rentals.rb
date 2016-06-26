class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :price
      t.string :property_type
      t.integer :no_of_bedrooms
      t.string :bedroom_type
      t.integer :no_of_bathrooms
      t.string :bathroom_type
      t.string :deposit
      t.string :maximum_no_of_people_per_room
      t.string :address
      t.string :contact_number
      t.string :owner

      t.timestamps null: false
    end
  end
end
