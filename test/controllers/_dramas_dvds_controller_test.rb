require "test_helper"

class DramasDvdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_dvd = _dramas_dvds(:one)
  end

  test "should get index" do
    get _dramas_dvds_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_dvd_url
    assert_response :success
  end

  test "should create _dramas_dvd" do
    assert_difference("DramasDvd.count") do
      post _dramas_dvds_url, params: { _dramas_dvd: { name: @_dramas_dvd.name } }
    end

    assert_redirected_to _dramas_dvd_url(DramasDvd.last)
  end

  test "should show _dramas_dvd" do
    get _dramas_dvd_url(@_dramas_dvd)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_dvd_url(@_dramas_dvd)
    assert_response :success
  end

  test "should update _dramas_dvd" do
    patch _dramas_dvd_url(@_dramas_dvd), params: { _dramas_dvd: { name: @_dramas_dvd.name } }
    assert_redirected_to _dramas_dvd_url(@_dramas_dvd)
  end

  test "should destroy _dramas_dvd" do
    assert_difference("DramasDvd.count", -1) do
      delete _dramas_dvd_url(@_dramas_dvd)
    end

    assert_redirected_to _dramas_dvds_url
  end
end
