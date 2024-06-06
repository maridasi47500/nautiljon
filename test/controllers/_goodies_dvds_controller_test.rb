require "test_helper"

class GoodiesDvdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_dvd = _goodies_dvds(:one)
  end

  test "should get index" do
    get _goodies_dvds_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_dvd_url
    assert_response :success
  end

  test "should create _goodies_dvd" do
    assert_difference("GoodiesDvd.count") do
      post _goodies_dvds_url, params: { _goodies_dvd: { name: @_goodies_dvd.name } }
    end

    assert_redirected_to _goodies_dvd_url(GoodiesDvd.last)
  end

  test "should show _goodies_dvd" do
    get _goodies_dvd_url(@_goodies_dvd)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_dvd_url(@_goodies_dvd)
    assert_response :success
  end

  test "should update _goodies_dvd" do
    patch _goodies_dvd_url(@_goodies_dvd), params: { _goodies_dvd: { name: @_goodies_dvd.name } }
    assert_redirected_to _goodies_dvd_url(@_goodies_dvd)
  end

  test "should destroy _goodies_dvd" do
    assert_difference("GoodiesDvd.count", -1) do
      delete _goodies_dvd_url(@_goodies_dvd)
    end

    assert_redirected_to _goodies_dvds_url
  end
end
