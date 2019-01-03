require 'test_helper'

class Api::V1::StrikesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_strikes_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_strikes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_strikes_destroy_url
    assert_response :success
  end

end
