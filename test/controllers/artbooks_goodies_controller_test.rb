require "test_helper"

class ArtbooksGoodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_goody = artbooks_goodies(:one)
  end

  test "should get index" do
    get artbooks_goodies_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_goody_url
    assert_response :success
  end

  test "should create artbooks_goody" do
    assert_difference("ArtbooksGoody.count") do
      post artbooks_goodies_url, params: { artbooks_goody: { name: @artbooks_goody.name } }
    end

    assert_redirected_to artbooks_goody_url(ArtbooksGoody.last)
  end

  test "should show artbooks_goody" do
    get artbooks_goody_url(@artbooks_goody)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_goody_url(@artbooks_goody)
    assert_response :success
  end

  test "should update artbooks_goody" do
    patch artbooks_goody_url(@artbooks_goody), params: { artbooks_goody: { name: @artbooks_goody.name } }
    assert_redirected_to artbooks_goody_url(@artbooks_goody)
  end

  test "should destroy artbooks_goody" do
    assert_difference("ArtbooksGoody.count", -1) do
      delete artbooks_goody_url(@artbooks_goody)
    end

    assert_redirected_to artbooks_goodies_url
  end
end
