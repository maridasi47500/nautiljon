require "test_helper"

class DoujinsDoujinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_doujin = _doujins_doujins(:one)
  end

  test "should get index" do
    get _doujins_doujins_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_doujin_url
    assert_response :success
  end

  test "should create _doujins_doujin" do
    assert_difference("DoujinsDoujin.count") do
      post _doujins_doujins_url, params: { _doujins_doujin: { name: @_doujins_doujin.name } }
    end

    assert_redirected_to _doujins_doujin_url(DoujinsDoujin.last)
  end

  test "should show _doujins_doujin" do
    get _doujins_doujin_url(@_doujins_doujin)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_doujin_url(@_doujins_doujin)
    assert_response :success
  end

  test "should update _doujins_doujin" do
    patch _doujins_doujin_url(@_doujins_doujin), params: { _doujins_doujin: { name: @_doujins_doujin.name } }
    assert_redirected_to _doujins_doujin_url(@_doujins_doujin)
  end

  test "should destroy _doujins_doujin" do
    assert_difference("DoujinsDoujin.count", -1) do
      delete _doujins_doujin_url(@_doujins_doujin)
    end

    assert_redirected_to _doujins_doujins_url
  end
end
