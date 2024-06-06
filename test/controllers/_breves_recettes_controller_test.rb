require "test_helper"

class BrevesRecettesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_recette = _breves_recettes(:one)
  end

  test "should get index" do
    get _breves_recettes_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_recette_url
    assert_response :success
  end

  test "should create _breves_recette" do
    assert_difference("BrevesRecette.count") do
      post _breves_recettes_url, params: { _breves_recette: { name: @_breves_recette.name } }
    end

    assert_redirected_to _breves_recette_url(BrevesRecette.last)
  end

  test "should show _breves_recette" do
    get _breves_recette_url(@_breves_recette)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_recette_url(@_breves_recette)
    assert_response :success
  end

  test "should update _breves_recette" do
    patch _breves_recette_url(@_breves_recette), params: { _breves_recette: { name: @_breves_recette.name } }
    assert_redirected_to _breves_recette_url(@_breves_recette)
  end

  test "should destroy _breves_recette" do
    assert_difference("BrevesRecette.count", -1) do
      delete _breves_recette_url(@_breves_recette)
    end

    assert_redirected_to _breves_recettes_url
  end
end
