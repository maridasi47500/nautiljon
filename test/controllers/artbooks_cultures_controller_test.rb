require "test_helper"

class ArtbooksCulturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_culture = artbooks_cultures(:one)
  end

  test "should get index" do
    get artbooks_cultures_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_culture_url
    assert_response :success
  end

  test "should create artbooks_culture" do
    assert_difference("ArtbooksCulture.count") do
      post artbooks_cultures_url, params: { artbooks_culture: { name: @artbooks_culture.name } }
    end

    assert_redirected_to artbooks_culture_url(ArtbooksCulture.last)
  end

  test "should show artbooks_culture" do
    get artbooks_culture_url(@artbooks_culture)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_culture_url(@artbooks_culture)
    assert_response :success
  end

  test "should update artbooks_culture" do
    patch artbooks_culture_url(@artbooks_culture), params: { artbooks_culture: { name: @artbooks_culture.name } }
    assert_redirected_to artbooks_culture_url(@artbooks_culture)
  end

  test "should destroy artbooks_culture" do
    assert_difference("ArtbooksCulture.count", -1) do
      delete artbooks_culture_url(@artbooks_culture)
    end

    assert_redirected_to artbooks_cultures_url
  end
end
