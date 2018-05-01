require 'test_helper'

class WashersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @washer = washers(:one)
  end

  test "should get index" do
    get washers_url
    assert_response :success
  end

  test "should get new" do
    get new_washer_url
    assert_response :success
  end

  test "should create washer" do
    assert_difference('Washer.count') do
      post washers_url, params: { washer: { address: @washer.address, cost: @washer.cost, latitude: @washer.latitude, longitude: @washer.longitude, user_id: @washer.user_id } }
    end

    assert_redirected_to washer_url(Washer.last)
  end

  test "should show washer" do
    get washer_url(@washer)
    assert_response :success
  end

  test "should get edit" do
    get edit_washer_url(@washer)
    assert_response :success
  end

  test "should update washer" do
    patch washer_url(@washer), params: { washer: { address: @washer.address, cost: @washer.cost, latitude: @washer.latitude, longitude: @washer.longitude, user_id: @washer.user_id } }
    assert_redirected_to washer_url(@washer)
  end

  test "should destroy washer" do
    assert_difference('Washer.count', -1) do
      delete washer_url(@washer)
    end

    assert_redirected_to washers_url
  end
end
