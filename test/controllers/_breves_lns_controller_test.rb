require "test_helper"

class BrevesLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_ln = _breves_lns(:one)
  end

  test "should get index" do
    get _breves_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_ln_url
    assert_response :success
  end

  test "should create _breves_ln" do
    assert_difference("BrevesLn.count") do
      post _breves_lns_url, params: { _breves_ln: { name: @_breves_ln.name } }
    end

    assert_redirected_to _breves_ln_url(BrevesLn.last)
  end

  test "should show _breves_ln" do
    get _breves_ln_url(@_breves_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_ln_url(@_breves_ln)
    assert_response :success
  end

  test "should update _breves_ln" do
    patch _breves_ln_url(@_breves_ln), params: { _breves_ln: { name: @_breves_ln.name } }
    assert_redirected_to _breves_ln_url(@_breves_ln)
  end

  test "should destroy _breves_ln" do
    assert_difference("BrevesLn.count", -1) do
      delete _breves_ln_url(@_breves_ln)
    end

    assert_redirected_to _breves_lns_url
  end
end
