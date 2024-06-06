require "test_helper"

class LivresMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_manga = _livres_mangas(:one)
  end

  test "should get index" do
    get _livres_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_manga_url
    assert_response :success
  end

  test "should create _livres_manga" do
    assert_difference("LivresManga.count") do
      post _livres_mangas_url, params: { _livres_manga: { name: @_livres_manga.name } }
    end

    assert_redirected_to _livres_manga_url(LivresManga.last)
  end

  test "should show _livres_manga" do
    get _livres_manga_url(@_livres_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_manga_url(@_livres_manga)
    assert_response :success
  end

  test "should update _livres_manga" do
    patch _livres_manga_url(@_livres_manga), params: { _livres_manga: { name: @_livres_manga.name } }
    assert_redirected_to _livres_manga_url(@_livres_manga)
  end

  test "should destroy _livres_manga" do
    assert_difference("LivresManga.count", -1) do
      delete _livres_manga_url(@_livres_manga)
    end

    assert_redirected_to _livres_mangas_url
  end
end
