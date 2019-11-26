require 'test_helper'

class ArmoredCarsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get armored_cars_edit_url
    assert_response :success
  end

  test "should get update" do
    get armored_cars_update_url
    assert_response :success
  end

end
