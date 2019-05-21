require 'test_helper'

class WagonersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wagoners_index_url
    assert_response :success
  end

  test "should get show" do
    get wagoners_show_url
    assert_response :success
  end

  test "should get new" do
    get wagoners_new_url
    assert_response :success
  end

  test "should get create" do
    get wagoners_create_url
    assert_response :success
  end

  test "should get edit" do
    get wagoners_edit_url
    assert_response :success
  end

  test "should get update" do
    get wagoners_update_url
    assert_response :success
  end

  test "should get destroy" do
    get wagoners_destroy_url
    assert_response :success
  end

end
