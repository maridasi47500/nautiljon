require "test_helper"

class DoujinshisLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_ln = _doujinshis_lns(:one)
  end

  test "should get index" do
    get _doujinshis_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_ln_url
    assert_response :success
  end

  test "should create _doujinshis_ln" do
    assert_difference("DoujinshisLn.count") do
      post _doujinshis_lns_url, params: { _doujinshis_ln: { name: @_doujinshis_ln.name } }
    end

    assert_redirected_to _doujinshis_ln_url(DoujinshisLn.last)
  end

  test "should show _doujinshis_ln" do
    get _doujinshis_ln_url(@_doujinshis_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_ln_url(@_doujinshis_ln)
    assert_response :success
  end

  test "should update _doujinshis_ln" do
    patch _doujinshis_ln_url(@_doujinshis_ln), params: { _doujinshis_ln: { name: @_doujinshis_ln.name } }
    assert_redirected_to _doujinshis_ln_url(@_doujinshis_ln)
  end

  test "should destroy _doujinshis_ln" do
    assert_difference("DoujinshisLn.count", -1) do
      delete _doujinshis_ln_url(@_doujinshis_ln)
    end

    assert_redirected_to _doujinshis_lns_url
  end
end
