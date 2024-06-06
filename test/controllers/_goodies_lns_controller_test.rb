require "test_helper"

class GoodiesLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_ln = _goodies_lns(:one)
  end

  test "should get index" do
    get _goodies_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_ln_url
    assert_response :success
  end

  test "should create _goodies_ln" do
    assert_difference("GoodiesLn.count") do
      post _goodies_lns_url, params: { _goodies_ln: { name: @_goodies_ln.name } }
    end

    assert_redirected_to _goodies_ln_url(GoodiesLn.last)
  end

  test "should show _goodies_ln" do
    get _goodies_ln_url(@_goodies_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_ln_url(@_goodies_ln)
    assert_response :success
  end

  test "should update _goodies_ln" do
    patch _goodies_ln_url(@_goodies_ln), params: { _goodies_ln: { name: @_goodies_ln.name } }
    assert_redirected_to _goodies_ln_url(@_goodies_ln)
  end

  test "should destroy _goodies_ln" do
    assert_difference("GoodiesLn.count", -1) do
      delete _goodies_ln_url(@_goodies_ln)
    end

    assert_redirected_to _goodies_lns_url
  end
end
