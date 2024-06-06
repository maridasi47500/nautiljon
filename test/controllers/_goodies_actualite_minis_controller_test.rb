require "test_helper"

class GoodiesActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_actualite_mini = _goodies_actualite_minis(:one)
  end

  test "should get index" do
    get _goodies_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_actualite_mini_url
    assert_response :success
  end

  test "should create _goodies_actualite_mini" do
    assert_difference("GoodiesActualiteMini.count") do
      post _goodies_actualite_minis_url, params: { _goodies_actualite_mini: { name: @_goodies_actualite_mini.name } }
    end

    assert_redirected_to _goodies_actualite_mini_url(GoodiesActualiteMini.last)
  end

  test "should show _goodies_actualite_mini" do
    get _goodies_actualite_mini_url(@_goodies_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_actualite_mini_url(@_goodies_actualite_mini)
    assert_response :success
  end

  test "should update _goodies_actualite_mini" do
    patch _goodies_actualite_mini_url(@_goodies_actualite_mini), params: { _goodies_actualite_mini: { name: @_goodies_actualite_mini.name } }
    assert_redirected_to _goodies_actualite_mini_url(@_goodies_actualite_mini)
  end

  test "should destroy _goodies_actualite_mini" do
    assert_difference("GoodiesActualiteMini.count", -1) do
      delete _goodies_actualite_mini_url(@_goodies_actualite_mini)
    end

    assert_redirected_to _goodies_actualite_minis_url
  end
end
