require "test_helper"

class BrevesMangaEditeursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_manga_editeur = _breves_manga_editeurs(:one)
  end

  test "should get index" do
    get _breves_manga_editeurs_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_manga_editeur_url
    assert_response :success
  end

  test "should create _breves_manga_editeur" do
    assert_difference("BrevesMangaEditeur.count") do
      post _breves_manga_editeurs_url, params: { _breves_manga_editeur: { name: @_breves_manga_editeur.name } }
    end

    assert_redirected_to _breves_manga_editeur_url(BrevesMangaEditeur.last)
  end

  test "should show _breves_manga_editeur" do
    get _breves_manga_editeur_url(@_breves_manga_editeur)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_manga_editeur_url(@_breves_manga_editeur)
    assert_response :success
  end

  test "should update _breves_manga_editeur" do
    patch _breves_manga_editeur_url(@_breves_manga_editeur), params: { _breves_manga_editeur: { name: @_breves_manga_editeur.name } }
    assert_redirected_to _breves_manga_editeur_url(@_breves_manga_editeur)
  end

  test "should destroy _breves_manga_editeur" do
    assert_difference("BrevesMangaEditeur.count", -1) do
      delete _breves_manga_editeur_url(@_breves_manga_editeur)
    end

    assert_redirected_to _breves_manga_editeurs_url
  end
end
