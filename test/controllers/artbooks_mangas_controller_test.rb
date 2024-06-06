require "test_helper"

class ArtbooksMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_manga = artbooks_mangas(:one)
  end

  test "should get index" do
    get artbooks_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_manga_url
    assert_response :success
  end

  test "should create artbooks_manga" do
    assert_difference("ArtbooksManga.count") do
      post artbooks_mangas_url, params: { artbooks_manga: { name: @artbooks_manga.name } }
    end

    assert_redirected_to artbooks_manga_url(ArtbooksManga.last)
  end

  test "should show artbooks_manga" do
    get artbooks_manga_url(@artbooks_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_manga_url(@artbooks_manga)
    assert_response :success
  end

  test "should update artbooks_manga" do
    patch artbooks_manga_url(@artbooks_manga), params: { artbooks_manga: { name: @artbooks_manga.name } }
    assert_redirected_to artbooks_manga_url(@artbooks_manga)
  end

  test "should destroy artbooks_manga" do
    assert_difference("ArtbooksManga.count", -1) do
      delete artbooks_manga_url(@artbooks_manga)
    end

    assert_redirected_to artbooks_mangas_url
  end
end
