require "test_helper"

class DoujinshisOriginesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_origine = _doujinshis_origines(:one)
  end

  test "should get index" do
    get _doujinshis_origines_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_origine_url
    assert_response :success
  end

  test "should create _doujinshis_origine" do
    assert_difference("DoujinshisOrigine.count") do
      post _doujinshis_origines_url, params: { _doujinshis_origine: { name: @_doujinshis_origine.name } }
    end

    assert_redirected_to _doujinshis_origine_url(DoujinshisOrigine.last)
  end

  test "should show _doujinshis_origine" do
    get _doujinshis_origine_url(@_doujinshis_origine)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_origine_url(@_doujinshis_origine)
    assert_response :success
  end

  test "should update _doujinshis_origine" do
    patch _doujinshis_origine_url(@_doujinshis_origine), params: { _doujinshis_origine: { name: @_doujinshis_origine.name } }
    assert_redirected_to _doujinshis_origine_url(@_doujinshis_origine)
  end

  test "should destroy _doujinshis_origine" do
    assert_difference("DoujinshisOrigine.count", -1) do
      delete _doujinshis_origine_url(@_doujinshis_origine)
    end

    assert_redirected_to _doujinshis_origines_url
  end
end
