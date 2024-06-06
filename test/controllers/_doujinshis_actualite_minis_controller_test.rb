require "test_helper"

class DoujinshisActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_actualite_mini = _doujinshis_actualite_minis(:one)
  end

  test "should get index" do
    get _doujinshis_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_actualite_mini_url
    assert_response :success
  end

  test "should create _doujinshis_actualite_mini" do
    assert_difference("DoujinshisActualiteMini.count") do
      post _doujinshis_actualite_minis_url, params: { _doujinshis_actualite_mini: { name: @_doujinshis_actualite_mini.name } }
    end

    assert_redirected_to _doujinshis_actualite_mini_url(DoujinshisActualiteMini.last)
  end

  test "should show _doujinshis_actualite_mini" do
    get _doujinshis_actualite_mini_url(@_doujinshis_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_actualite_mini_url(@_doujinshis_actualite_mini)
    assert_response :success
  end

  test "should update _doujinshis_actualite_mini" do
    patch _doujinshis_actualite_mini_url(@_doujinshis_actualite_mini), params: { _doujinshis_actualite_mini: { name: @_doujinshis_actualite_mini.name } }
    assert_redirected_to _doujinshis_actualite_mini_url(@_doujinshis_actualite_mini)
  end

  test "should destroy _doujinshis_actualite_mini" do
    assert_difference("DoujinshisActualiteMini.count", -1) do
      delete _doujinshis_actualite_mini_url(@_doujinshis_actualite_mini)
    end

    assert_redirected_to _doujinshis_actualite_minis_url
  end
end
