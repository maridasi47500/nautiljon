require "test_helper"

class DoujinsConventionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_convention = _doujins_conventions(:one)
  end

  test "should get index" do
    get _doujins_conventions_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_convention_url
    assert_response :success
  end

  test "should create _doujins_convention" do
    assert_difference("DoujinsConvention.count") do
      post _doujins_conventions_url, params: { _doujins_convention: { name: @_doujins_convention.name } }
    end

    assert_redirected_to _doujins_convention_url(DoujinsConvention.last)
  end

  test "should show _doujins_convention" do
    get _doujins_convention_url(@_doujins_convention)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_convention_url(@_doujins_convention)
    assert_response :success
  end

  test "should update _doujins_convention" do
    patch _doujins_convention_url(@_doujins_convention), params: { _doujins_convention: { name: @_doujins_convention.name } }
    assert_redirected_to _doujins_convention_url(@_doujins_convention)
  end

  test "should destroy _doujins_convention" do
    assert_difference("DoujinsConvention.count", -1) do
      delete _doujins_convention_url(@_doujins_convention)
    end

    assert_redirected_to _doujins_conventions_url
  end
end
