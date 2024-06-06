require "test_helper"

class DramasLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_ln = _dramas_lns(:one)
  end

  test "should get index" do
    get _dramas_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_ln_url
    assert_response :success
  end

  test "should create _dramas_ln" do
    assert_difference("DramasLn.count") do
      post _dramas_lns_url, params: { _dramas_ln: { name: @_dramas_ln.name } }
    end

    assert_redirected_to _dramas_ln_url(DramasLn.last)
  end

  test "should show _dramas_ln" do
    get _dramas_ln_url(@_dramas_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_ln_url(@_dramas_ln)
    assert_response :success
  end

  test "should update _dramas_ln" do
    patch _dramas_ln_url(@_dramas_ln), params: { _dramas_ln: { name: @_dramas_ln.name } }
    assert_redirected_to _dramas_ln_url(@_dramas_ln)
  end

  test "should destroy _dramas_ln" do
    assert_difference("DramasLn.count", -1) do
      delete _dramas_ln_url(@_dramas_ln)
    end

    assert_redirected_to _dramas_lns_url
  end
end
