require "test_helper"

class GoodiesJvPersosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_jv_perso = _goodies_jv_persos(:one)
  end

  test "should get index" do
    get _goodies_jv_persos_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_jv_perso_url
    assert_response :success
  end

  test "should create _goodies_jv_perso" do
    assert_difference("GoodiesJvPerso.count") do
      post _goodies_jv_persos_url, params: { _goodies_jv_perso: { name: @_goodies_jv_perso.name } }
    end

    assert_redirected_to _goodies_jv_perso_url(GoodiesJvPerso.last)
  end

  test "should show _goodies_jv_perso" do
    get _goodies_jv_perso_url(@_goodies_jv_perso)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_jv_perso_url(@_goodies_jv_perso)
    assert_response :success
  end

  test "should update _goodies_jv_perso" do
    patch _goodies_jv_perso_url(@_goodies_jv_perso), params: { _goodies_jv_perso: { name: @_goodies_jv_perso.name } }
    assert_redirected_to _goodies_jv_perso_url(@_goodies_jv_perso)
  end

  test "should destroy _goodies_jv_perso" do
    assert_difference("GoodiesJvPerso.count", -1) do
      delete _goodies_jv_perso_url(@_goodies_jv_perso)
    end

    assert_redirected_to _goodies_jv_persos_url
  end
end
