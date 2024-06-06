require "test_helper"

class BrevesDvdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_dvd = _breves_dvds(:one)
  end

  test "should get index" do
    get _breves_dvds_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_dvd_url
    assert_response :success
  end

  test "should create _breves_dvd" do
    assert_difference("BrevesDvd.count") do
      post _breves_dvds_url, params: { _breves_dvd: { name: @_breves_dvd.name } }
    end

    assert_redirected_to _breves_dvd_url(BrevesDvd.last)
  end

  test "should show _breves_dvd" do
    get _breves_dvd_url(@_breves_dvd)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_dvd_url(@_breves_dvd)
    assert_response :success
  end

  test "should update _breves_dvd" do
    patch _breves_dvd_url(@_breves_dvd), params: { _breves_dvd: { name: @_breves_dvd.name } }
    assert_redirected_to _breves_dvd_url(@_breves_dvd)
  end

  test "should destroy _breves_dvd" do
    assert_difference("BrevesDvd.count", -1) do
      delete _breves_dvd_url(@_breves_dvd)
    end

    assert_redirected_to _breves_dvds_url
  end
end
