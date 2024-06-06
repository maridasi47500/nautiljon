require "test_helper"

class GoodiesPersosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_perso = _goodies_persos(:one)
  end

  test "should get index" do
    get _goodies_persos_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_perso_url
    assert_response :success
  end

  test "should create _goodies_perso" do
    assert_difference("GoodiesPerso.count") do
      post _goodies_persos_url, params: { _goodies_perso: { name: @_goodies_perso.name } }
    end

    assert_redirected_to _goodies_perso_url(GoodiesPerso.last)
  end

  test "should show _goodies_perso" do
    get _goodies_perso_url(@_goodies_perso)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_perso_url(@_goodies_perso)
    assert_response :success
  end

  test "should update _goodies_perso" do
    patch _goodies_perso_url(@_goodies_perso), params: { _goodies_perso: { name: @_goodies_perso.name } }
    assert_redirected_to _goodies_perso_url(@_goodies_perso)
  end

  test "should destroy _goodies_perso" do
    assert_difference("GoodiesPerso.count", -1) do
      delete _goodies_perso_url(@_goodies_perso)
    end

    assert_redirected_to _goodies_persos_url
  end
end
