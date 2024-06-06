require "test_helper"

class FicheUniversDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_drama = _fiche_univers_dramas(:one)
  end

  test "should get index" do
    get _fiche_univers_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_drama_url
    assert_response :success
  end

  test "should create _fiche_univers_drama" do
    assert_difference("FicheUniversDrama.count") do
      post _fiche_univers_dramas_url, params: { _fiche_univers_drama: { name: @_fiche_univers_drama.name } }
    end

    assert_redirected_to _fiche_univers_drama_url(FicheUniversDrama.last)
  end

  test "should show _fiche_univers_drama" do
    get _fiche_univers_drama_url(@_fiche_univers_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_drama_url(@_fiche_univers_drama)
    assert_response :success
  end

  test "should update _fiche_univers_drama" do
    patch _fiche_univers_drama_url(@_fiche_univers_drama), params: { _fiche_univers_drama: { name: @_fiche_univers_drama.name } }
    assert_redirected_to _fiche_univers_drama_url(@_fiche_univers_drama)
  end

  test "should destroy _fiche_univers_drama" do
    assert_difference("FicheUniversDrama.count", -1) do
      delete _fiche_univers_drama_url(@_fiche_univers_drama)
    end

    assert_redirected_to _fiche_univers_dramas_url
  end
end
