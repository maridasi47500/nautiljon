require "test_helper"

class DoujinshisPersosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_perso = _doujinshis_persos(:one)
  end

  test "should get index" do
    get _doujinshis_persos_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_perso_url
    assert_response :success
  end

  test "should create _doujinshis_perso" do
    assert_difference("DoujinshisPerso.count") do
      post _doujinshis_persos_url, params: { _doujinshis_perso: { name: @_doujinshis_perso.name } }
    end

    assert_redirected_to _doujinshis_perso_url(DoujinshisPerso.last)
  end

  test "should show _doujinshis_perso" do
    get _doujinshis_perso_url(@_doujinshis_perso)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_perso_url(@_doujinshis_perso)
    assert_response :success
  end

  test "should update _doujinshis_perso" do
    patch _doujinshis_perso_url(@_doujinshis_perso), params: { _doujinshis_perso: { name: @_doujinshis_perso.name } }
    assert_redirected_to _doujinshis_perso_url(@_doujinshis_perso)
  end

  test "should destroy _doujinshis_perso" do
    assert_difference("DoujinshisPerso.count", -1) do
      delete _doujinshis_perso_url(@_doujinshis_perso)
    end

    assert_redirected_to _doujinshis_persos_url
  end
end
