require "test_helper"

class DoujinsLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_ln = _doujins_lns(:one)
  end

  test "should get index" do
    get _doujins_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_ln_url
    assert_response :success
  end

  test "should create _doujins_ln" do
    assert_difference("DoujinsLn.count") do
      post _doujins_lns_url, params: { _doujins_ln: { name: @_doujins_ln.name } }
    end

    assert_redirected_to _doujins_ln_url(DoujinsLn.last)
  end

  test "should show _doujins_ln" do
    get _doujins_ln_url(@_doujins_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_ln_url(@_doujins_ln)
    assert_response :success
  end

  test "should update _doujins_ln" do
    patch _doujins_ln_url(@_doujins_ln), params: { _doujins_ln: { name: @_doujins_ln.name } }
    assert_redirected_to _doujins_ln_url(@_doujins_ln)
  end

  test "should destroy _doujins_ln" do
    assert_difference("DoujinsLn.count", -1) do
      delete _doujins_ln_url(@_doujins_ln)
    end

    assert_redirected_to _doujins_lns_url
  end
end
