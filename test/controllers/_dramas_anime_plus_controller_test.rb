require "test_helper"

class DramasAnimePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_anime_plu = _dramas_anime_plus(:one)
  end

  test "should get index" do
    get _dramas_anime_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_anime_plu_url
    assert_response :success
  end

  test "should create _dramas_anime_plu" do
    assert_difference("DramasAnimePlu.count") do
      post _dramas_anime_plus_url, params: { _dramas_anime_plu: { name: @_dramas_anime_plu.name } }
    end

    assert_redirected_to _dramas_anime_plu_url(DramasAnimePlu.last)
  end

  test "should show _dramas_anime_plu" do
    get _dramas_anime_plu_url(@_dramas_anime_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_anime_plu_url(@_dramas_anime_plu)
    assert_response :success
  end

  test "should update _dramas_anime_plu" do
    patch _dramas_anime_plu_url(@_dramas_anime_plu), params: { _dramas_anime_plu: { name: @_dramas_anime_plu.name } }
    assert_redirected_to _dramas_anime_plu_url(@_dramas_anime_plu)
  end

  test "should destroy _dramas_anime_plu" do
    assert_difference("DramasAnimePlu.count", -1) do
      delete _dramas_anime_plu_url(@_dramas_anime_plu)
    end

    assert_redirected_to _dramas_anime_plus_url
  end
end
