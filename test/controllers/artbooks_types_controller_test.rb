require "test_helper"

class ArtbooksTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_type = artbooks_types(:one)
  end

  test "should get index" do
    get artbooks_types_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_type_url
    assert_response :success
  end

  test "should create artbooks_type" do
    assert_difference("ArtbooksType.count") do
      post artbooks_types_url, params: { artbooks_type: { name: @artbooks_type.name } }
    end

    assert_redirected_to artbooks_type_url(ArtbooksType.last)
  end

  test "should show artbooks_type" do
    get artbooks_type_url(@artbooks_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_type_url(@artbooks_type)
    assert_response :success
  end

  test "should update artbooks_type" do
    patch artbooks_type_url(@artbooks_type), params: { artbooks_type: { name: @artbooks_type.name } }
    assert_redirected_to artbooks_type_url(@artbooks_type)
  end

  test "should destroy artbooks_type" do
    assert_difference("ArtbooksType.count", -1) do
      delete artbooks_type_url(@artbooks_type)
    end

    assert_redirected_to artbooks_types_url
  end
end
