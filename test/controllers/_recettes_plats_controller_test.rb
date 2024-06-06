require "test_helper"

class RecettesPlatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_recettes_plat = _recettes_plats(:one)
  end

  test "should get index" do
    get _recettes_plats_url
    assert_response :success
  end

  test "should get new" do
    get new__recettes_plat_url
    assert_response :success
  end

  test "should create _recettes_plat" do
    assert_difference("RecettesPlat.count") do
      post _recettes_plats_url, params: { _recettes_plat: { name: @_recettes_plat.name } }
    end

    assert_redirected_to _recettes_plat_url(RecettesPlat.last)
  end

  test "should show _recettes_plat" do
    get _recettes_plat_url(@_recettes_plat)
    assert_response :success
  end

  test "should get edit" do
    get edit__recettes_plat_url(@_recettes_plat)
    assert_response :success
  end

  test "should update _recettes_plat" do
    patch _recettes_plat_url(@_recettes_plat), params: { _recettes_plat: { name: @_recettes_plat.name } }
    assert_redirected_to _recettes_plat_url(@_recettes_plat)
  end

  test "should destroy _recettes_plat" do
    assert_difference("RecettesPlat.count", -1) do
      delete _recettes_plat_url(@_recettes_plat)
    end

    assert_redirected_to _recettes_plats_url
  end
end
