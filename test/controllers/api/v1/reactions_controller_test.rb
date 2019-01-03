require 'test_helper'

class Api::V1::ReactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_reactions_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_reactions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_reactions_destroy_url
    assert_response :success
  end

end
