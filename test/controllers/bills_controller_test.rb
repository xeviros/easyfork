require 'test_helper'

class BillsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bills_new_url
    assert_response :success
  end

  test "should get edit" do
    get bills_edit_url
    assert_response :success
  end

  test "should get show" do
    get bills_show_url
    assert_response :success
  end

  test "should get create" do
    get bills_create_url
    assert_response :success
  end

  test "should get update" do
    get bills_update_url
    assert_response :success
  end

end
