require "test_helper"

class VolumesLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_volumes_ln = _volumes_lns(:one)
  end

  test "should get index" do
    get _volumes_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__volumes_ln_url
    assert_response :success
  end

  test "should create _volumes_ln" do
    assert_difference("VolumesLn.count") do
      post _volumes_lns_url, params: { _volumes_ln: { name: @_volumes_ln.name } }
    end

    assert_redirected_to _volumes_ln_url(VolumesLn.last)
  end

  test "should show _volumes_ln" do
    get _volumes_ln_url(@_volumes_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__volumes_ln_url(@_volumes_ln)
    assert_response :success
  end

  test "should update _volumes_ln" do
    patch _volumes_ln_url(@_volumes_ln), params: { _volumes_ln: { name: @_volumes_ln.name } }
    assert_redirected_to _volumes_ln_url(@_volumes_ln)
  end

  test "should destroy _volumes_ln" do
    assert_difference("VolumesLn.count", -1) do
      delete _volumes_ln_url(@_volumes_ln)
    end

    assert_redirected_to _volumes_lns_url
  end
end
