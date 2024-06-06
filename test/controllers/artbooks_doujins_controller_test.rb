require "test_helper"

class ArtbooksDoujinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_doujin = artbooks_doujins(:one)
  end

  test "should get index" do
    get artbooks_doujins_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_doujin_url
    assert_response :success
  end

  test "should create artbooks_doujin" do
    assert_difference("ArtbooksDoujin.count") do
      post artbooks_doujins_url, params: { artbooks_doujin: { name: @artbooks_doujin.name } }
    end

    assert_redirected_to artbooks_doujin_url(ArtbooksDoujin.last)
  end

  test "should show artbooks_doujin" do
    get artbooks_doujin_url(@artbooks_doujin)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_doujin_url(@artbooks_doujin)
    assert_response :success
  end

  test "should update artbooks_doujin" do
    patch artbooks_doujin_url(@artbooks_doujin), params: { artbooks_doujin: { name: @artbooks_doujin.name } }
    assert_redirected_to artbooks_doujin_url(@artbooks_doujin)
  end

  test "should destroy artbooks_doujin" do
    assert_difference("ArtbooksDoujin.count", -1) do
      delete artbooks_doujin_url(@artbooks_doujin)
    end

    assert_redirected_to artbooks_doujins_url
  end
end
