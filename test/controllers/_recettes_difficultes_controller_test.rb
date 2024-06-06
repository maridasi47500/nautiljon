require "test_helper"

class RecettesDifficultesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_recettes_difficulte = _recettes_difficultes(:one)
  end

  test "should get index" do
    get _recettes_difficultes_url
    assert_response :success
  end

  test "should get new" do
    get new__recettes_difficulte_url
    assert_response :success
  end

  test "should create _recettes_difficulte" do
    assert_difference("RecettesDifficulte.count") do
      post _recettes_difficultes_url, params: { _recettes_difficulte: { name: @_recettes_difficulte.name } }
    end

    assert_redirected_to _recettes_difficulte_url(RecettesDifficulte.last)
  end

  test "should show _recettes_difficulte" do
    get _recettes_difficulte_url(@_recettes_difficulte)
    assert_response :success
  end

  test "should get edit" do
    get edit__recettes_difficulte_url(@_recettes_difficulte)
    assert_response :success
  end

  test "should update _recettes_difficulte" do
    patch _recettes_difficulte_url(@_recettes_difficulte), params: { _recettes_difficulte: { name: @_recettes_difficulte.name } }
    assert_redirected_to _recettes_difficulte_url(@_recettes_difficulte)
  end

  test "should destroy _recettes_difficulte" do
    assert_difference("RecettesDifficulte.count", -1) do
      delete _recettes_difficulte_url(@_recettes_difficulte)
    end

    assert_redirected_to _recettes_difficultes_url
  end
end
