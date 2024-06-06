require "test_helper"

class DoujinshisJvPersosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_jv_perso = _doujinshis_jv_persos(:one)
  end

  test "should get index" do
    get _doujinshis_jv_persos_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_jv_perso_url
    assert_response :success
  end

  test "should create _doujinshis_jv_perso" do
    assert_difference("DoujinshisJvPerso.count") do
      post _doujinshis_jv_persos_url, params: { _doujinshis_jv_perso: { name: @_doujinshis_jv_perso.name } }
    end

    assert_redirected_to _doujinshis_jv_perso_url(DoujinshisJvPerso.last)
  end

  test "should show _doujinshis_jv_perso" do
    get _doujinshis_jv_perso_url(@_doujinshis_jv_perso)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_jv_perso_url(@_doujinshis_jv_perso)
    assert_response :success
  end

  test "should update _doujinshis_jv_perso" do
    patch _doujinshis_jv_perso_url(@_doujinshis_jv_perso), params: { _doujinshis_jv_perso: { name: @_doujinshis_jv_perso.name } }
    assert_redirected_to _doujinshis_jv_perso_url(@_doujinshis_jv_perso)
  end

  test "should destroy _doujinshis_jv_perso" do
    assert_difference("DoujinshisJvPerso.count", -1) do
      delete _doujinshis_jv_perso_url(@_doujinshis_jv_perso)
    end

    assert_redirected_to _doujinshis_jv_persos_url
  end
end
