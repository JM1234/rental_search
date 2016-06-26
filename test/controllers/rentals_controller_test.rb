require 'test_helper'

class RentalsControllerTest < ActionController::TestCase
  setup do
    @rental = rentals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rentals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rental" do
    assert_difference('Rental.count') do
      post :create, rental: { address: @rental.address, bathroom_type: @rental.bathroom_type, bedroom_type: @rental.bedroom_type, contact_number: @rental.contact_number, deposit: @rental.deposit, maximum_no_of_people_per_room: @rental.maximum_no_of_people_per_room, no_of_bathrooms: @rental.no_of_bathrooms, no_of_bedrooms: @rental.no_of_bedrooms, owner: @rental.owner, price: @rental.price, property_type: @rental.property_type }
    end

    assert_redirected_to rental_path(assigns(:rental))
  end

  test "should show rental" do
    get :show, id: @rental
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rental
    assert_response :success
  end

  test "should update rental" do
    patch :update, id: @rental, rental: { address: @rental.address, bathroom_type: @rental.bathroom_type, bedroom_type: @rental.bedroom_type, contact_number: @rental.contact_number, deposit: @rental.deposit, maximum_no_of_people_per_room: @rental.maximum_no_of_people_per_room, no_of_bathrooms: @rental.no_of_bathrooms, no_of_bedrooms: @rental.no_of_bedrooms, owner: @rental.owner, price: @rental.price, property_type: @rental.property_type }
    assert_redirected_to rental_path(assigns(:rental))
  end

  test "should destroy rental" do
    assert_difference('Rental.count', -1) do
      delete :destroy, id: @rental
    end

    assert_redirected_to rentals_path
  end
end
