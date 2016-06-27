json.array!(@rentals) do |rental|
  json.extract! rental, :id, :title, :price, :property_type, :no_of_bedrooms, :bedroom_type, :no_of_bathrooms, :bathroom_type, :deposit, :maximum_no_of_people_per_room, :address, :contact_number, :owner
  json.url rental_url(rental, format: :json)
end
