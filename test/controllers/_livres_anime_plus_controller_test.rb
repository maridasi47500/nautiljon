require "test_helper"

class LivresAnimePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_anime_plu = _livres_anime_plus(:one)
  end

  test "should get index" do
    get _livres_anime_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_anime_plu_url
    assert_response :success
  end

  test "should create _livres_anime_plu" do
    assert_difference("LivresAnimePlu.count") do
      post _livres_anime_plus_url, params: { _livres_anime_plu: { name: @_livres_anime_plu.name } }
    end

    assert_redirected_to _livres_anime_plu_url(LivresAnimePlu.last)
  end

  test "should show _livres_anime_plu" do
    get _livres_anime_plu_url(@_livres_anime_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_anime_plu_url(@_livres_anime_plu)
    assert_response :success
  end

  test "should update _livres_anime_plu" do
    patch _livres_anime_plu_url(@_livres_anime_plu), params: { _livres_anime_plu: { name: @_livres_anime_plu.name } }
    assert_redirected_to _livres_anime_plu_url(@_livres_anime_plu)
  end

  test "should destroy _livres_anime_plu" do
    assert_difference("LivresAnimePlu.count", -1) do
      delete _livres_anime_plu_url(@_livres_anime_plu)
    end

    assert_redirected_to _livres_anime_plus_url
  end
end
