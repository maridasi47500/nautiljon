require "test_helper"

class FicheUniversCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_cat = _fiche_univers_cats(:one)
  end

  test "should get index" do
    get _fiche_univers_cats_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_cat_url
    assert_response :success
  end

  test "should create _fiche_univers_cat" do
    assert_difference("FicheUniversCat.count") do
      post _fiche_univers_cats_url, params: { _fiche_univers_cat: { name: @_fiche_univers_cat.name } }
    end

    assert_redirected_to _fiche_univers_cat_url(FicheUniversCat.last)
  end

  test "should show _fiche_univers_cat" do
    get _fiche_univers_cat_url(@_fiche_univers_cat)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_cat_url(@_fiche_univers_cat)
    assert_response :success
  end

  test "should update _fiche_univers_cat" do
    patch _fiche_univers_cat_url(@_fiche_univers_cat), params: { _fiche_univers_cat: { name: @_fiche_univers_cat.name } }
    assert_redirected_to _fiche_univers_cat_url(@_fiche_univers_cat)
  end

  test "should destroy _fiche_univers_cat" do
    assert_difference("FicheUniversCat.count", -1) do
      delete _fiche_univers_cat_url(@_fiche_univers_cat)
    end

    assert_redirected_to _fiche_univers_cats_url
  end
end
