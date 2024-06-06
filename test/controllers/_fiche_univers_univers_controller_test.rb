require "test_helper"

class FicheUniversUniversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_univer = _fiche_univers_univers(:one)
  end

  test "should get index" do
    get _fiche_univers_univers_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_univer_url
    assert_response :success
  end

  test "should create _fiche_univers_univer" do
    assert_difference("FicheUniversUniver.count") do
      post _fiche_univers_univers_url, params: { _fiche_univers_univer: { name: @_fiche_univers_univer.name } }
    end

    assert_redirected_to _fiche_univers_univer_url(FicheUniversUniver.last)
  end

  test "should show _fiche_univers_univer" do
    get _fiche_univers_univer_url(@_fiche_univers_univer)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_univer_url(@_fiche_univers_univer)
    assert_response :success
  end

  test "should update _fiche_univers_univer" do
    patch _fiche_univers_univer_url(@_fiche_univers_univer), params: { _fiche_univers_univer: { name: @_fiche_univers_univer.name } }
    assert_redirected_to _fiche_univers_univer_url(@_fiche_univers_univer)
  end

  test "should destroy _fiche_univers_univer" do
    assert_difference("FicheUniversUniver.count", -1) do
      delete _fiche_univers_univer_url(@_fiche_univers_univer)
    end

    assert_redirected_to _fiche_univers_univers_url
  end
end
