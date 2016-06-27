class AddTitleToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :title, :string
  end
end
