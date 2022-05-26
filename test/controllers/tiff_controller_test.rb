require "test_helper"

class TiffControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tiff_create_url
    assert_response :success
  end

  test "should get view" do
    get tiff_view_url
    assert_response :success
  end

  test "should get index" do
    get tiff_index_url
    assert_response :success
  end

  test "should get delete" do
    get tiff_delete_url
    assert_response :success
  end

  test "should get update" do
    get tiff_update_url
    assert_response :success
  end
end
