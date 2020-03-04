require 'test_helper'

class BoulangeriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boulangeries_index_url
    assert_response :success
  end

  test "should get new" do
    get boulangeries_new_url
    assert_response :success
  end

  test "should get edit" do
    get boulangeries_edit_url
    assert_response :success
  end

  test "should get update" do
    get boulangeries_update_url
    assert_response :success
  end

  test "should get create" do
    get boulangeries_create_url
    assert_response :success
  end

  test "should get destroy" do
    get boulangeries_destroy_url
    assert_response :success
  end

end
