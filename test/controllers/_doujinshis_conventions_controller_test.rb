require "test_helper"

class DoujinshisConventionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_convention = _doujinshis_conventions(:one)
  end

  test "should get index" do
    get _doujinshis_conventions_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_convention_url
    assert_response :success
  end

  test "should create _doujinshis_convention" do
    assert_difference("DoujinshisConvention.count") do
      post _doujinshis_conventions_url, params: { _doujinshis_convention: { name: @_doujinshis_convention.name } }
    end

    assert_redirected_to _doujinshis_convention_url(DoujinshisConvention.last)
  end

  test "should show _doujinshis_convention" do
    get _doujinshis_convention_url(@_doujinshis_convention)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_convention_url(@_doujinshis_convention)
    assert_response :success
  end

  test "should update _doujinshis_convention" do
    patch _doujinshis_convention_url(@_doujinshis_convention), params: { _doujinshis_convention: { name: @_doujinshis_convention.name } }
    assert_redirected_to _doujinshis_convention_url(@_doujinshis_convention)
  end

  test "should destroy _doujinshis_convention" do
    assert_difference("DoujinshisConvention.count", -1) do
      delete _doujinshis_convention_url(@_doujinshis_convention)
    end

    assert_redirected_to _doujinshis_conventions_url
  end
end
