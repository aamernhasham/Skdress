require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get newarrivals" do
    get :newarrivals
    assert_response :success
  end

  test "should get dresses" do
    get :dresses
    assert_response :success
  end

  test "should get bags" do
    get :bags
    assert_response :success
  end

  test "should get sale" do
    get :sale
    assert_response :success
  end

end
