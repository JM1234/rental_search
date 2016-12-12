class AddRentalIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :rental_id, :integer
  end
end
