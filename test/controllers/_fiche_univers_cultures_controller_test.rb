require "test_helper"

class FicheUniversCulturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_culture = _fiche_univers_cultures(:one)
  end

  test "should get index" do
    get _fiche_univers_cultures_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_culture_url
    assert_response :success
  end

  test "should create _fiche_univers_culture" do
    assert_difference("FicheUniversCulture.count") do
      post _fiche_univers_cultures_url, params: { _fiche_univers_culture: { name: @_fiche_univers_culture.name } }
    end

    assert_redirected_to _fiche_univers_culture_url(FicheUniversCulture.last)
  end

  test "should show _fiche_univers_culture" do
    get _fiche_univers_culture_url(@_fiche_univers_culture)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_culture_url(@_fiche_univers_culture)
    assert_response :success
  end

  test "should update _fiche_univers_culture" do
    patch _fiche_univers_culture_url(@_fiche_univers_culture), params: { _fiche_univers_culture: { name: @_fiche_univers_culture.name } }
    assert_redirected_to _fiche_univers_culture_url(@_fiche_univers_culture)
  end

  test "should destroy _fiche_univers_culture" do
    assert_difference("FicheUniversCulture.count", -1) do
      delete _fiche_univers_culture_url(@_fiche_univers_culture)
    end

    assert_redirected_to _fiche_univers_cultures_url
  end
end
