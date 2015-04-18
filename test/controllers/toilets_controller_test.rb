require 'test_helper'

class ToiletsControllerTest < ActionController::TestCase
  setup do
    @toilet = toilets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toilets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toilet" do
    assert_difference('Toilet.count') do
      post :create, toilet: { closing_hours: @toilet.closing_hours, description: @toilet.description, genders: @toilet.genders, lat: @toilet.lat, lng: @toilet.lng, managed_by: @toilet.managed_by, name: @toilet.name, no_of_bathrooms: @toilet.no_of_bathrooms, no_of_toilets: @toilet.no_of_toilets, no_of_urinals: @toilet.no_of_urinals, open_closing_note: @toilet.open_closing_note, open_hours: @toilet.open_hours, paid: @toilet.paid, type: @toilet.type }
    end

    assert_redirected_to toilet_path(assigns(:toilet))
  end

  test "should show toilet" do
    get :show, id: @toilet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toilet
    assert_response :success
  end

  test "should update toilet" do
    patch :update, id: @toilet, toilet: { closing_hours: @toilet.closing_hours, description: @toilet.description, genders: @toilet.genders, lat: @toilet.lat, lng: @toilet.lng, managed_by: @toilet.managed_by, name: @toilet.name, no_of_bathrooms: @toilet.no_of_bathrooms, no_of_toilets: @toilet.no_of_toilets, no_of_urinals: @toilet.no_of_urinals, open_closing_note: @toilet.open_closing_note, open_hours: @toilet.open_hours, paid: @toilet.paid, type: @toilet.type }
    assert_redirected_to toilet_path(assigns(:toilet))
  end

  test "should destroy toilet" do
    assert_difference('Toilet.count', -1) do
      delete :destroy, id: @toilet
    end

    assert_redirected_to toilets_path
  end
end
