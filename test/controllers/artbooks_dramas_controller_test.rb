require "test_helper"

class ArtbooksDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_drama = artbooks_dramas(:one)
  end

  test "should get index" do
    get artbooks_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_drama_url
    assert_response :success
  end

  test "should create artbooks_drama" do
    assert_difference("ArtbooksDrama.count") do
      post artbooks_dramas_url, params: { artbooks_drama: { name: @artbooks_drama.name } }
    end

    assert_redirected_to artbooks_drama_url(ArtbooksDrama.last)
  end

  test "should show artbooks_drama" do
    get artbooks_drama_url(@artbooks_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_drama_url(@artbooks_drama)
    assert_response :success
  end

  test "should update artbooks_drama" do
    patch artbooks_drama_url(@artbooks_drama), params: { artbooks_drama: { name: @artbooks_drama.name } }
    assert_redirected_to artbooks_drama_url(@artbooks_drama)
  end

  test "should destroy artbooks_drama" do
    assert_difference("ArtbooksDrama.count", -1) do
      delete artbooks_drama_url(@artbooks_drama)
    end

    assert_redirected_to artbooks_dramas_url
  end
end
