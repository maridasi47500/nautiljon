require "test_helper"

class ArtbooksArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_artbook = artbooks_artbooks(:one)
  end

  test "should get index" do
    get artbooks_artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_artbook_url
    assert_response :success
  end

  test "should create artbooks_artbook" do
    assert_difference("ArtbooksArtbook.count") do
      post artbooks_artbooks_url, params: { artbooks_artbook: { name: @artbooks_artbook.name } }
    end

    assert_redirected_to artbooks_artbook_url(ArtbooksArtbook.last)
  end

  test "should show artbooks_artbook" do
    get artbooks_artbook_url(@artbooks_artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_artbook_url(@artbooks_artbook)
    assert_response :success
  end

  test "should update artbooks_artbook" do
    patch artbooks_artbook_url(@artbooks_artbook), params: { artbooks_artbook: { name: @artbooks_artbook.name } }
    assert_redirected_to artbooks_artbook_url(@artbooks_artbook)
  end

  test "should destroy artbooks_artbook" do
    assert_difference("ArtbooksArtbook.count", -1) do
      delete artbooks_artbook_url(@artbooks_artbook)
    end

    assert_redirected_to artbooks_artbooks_url
  end
end
