require "test_helper"

class ArtbooksDoujinshisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_doujinshi = artbooks_doujinshis(:one)
  end

  test "should get index" do
    get artbooks_doujinshis_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_doujinshi_url
    assert_response :success
  end

  test "should create artbooks_doujinshi" do
    assert_difference("ArtbooksDoujinshi.count") do
      post artbooks_doujinshis_url, params: { artbooks_doujinshi: { name: @artbooks_doujinshi.name } }
    end

    assert_redirected_to artbooks_doujinshi_url(ArtbooksDoujinshi.last)
  end

  test "should show artbooks_doujinshi" do
    get artbooks_doujinshi_url(@artbooks_doujinshi)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_doujinshi_url(@artbooks_doujinshi)
    assert_response :success
  end

  test "should update artbooks_doujinshi" do
    patch artbooks_doujinshi_url(@artbooks_doujinshi), params: { artbooks_doujinshi: { name: @artbooks_doujinshi.name } }
    assert_redirected_to artbooks_doujinshi_url(@artbooks_doujinshi)
  end

  test "should destroy artbooks_doujinshi" do
    assert_difference("ArtbooksDoujinshi.count", -1) do
      delete artbooks_doujinshi_url(@artbooks_doujinshi)
    end

    assert_redirected_to artbooks_doujinshis_url
  end
end
