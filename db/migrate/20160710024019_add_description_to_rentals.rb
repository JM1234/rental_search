class AddDescriptionToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :description, :string
  end
end
