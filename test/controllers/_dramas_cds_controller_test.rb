require "test_helper"

class DramasCdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_cd = _dramas_cds(:one)
  end

  test "should get index" do
    get _dramas_cds_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_cd_url
    assert_response :success
  end

  test "should create _dramas_cd" do
    assert_difference("DramasCd.count") do
      post _dramas_cds_url, params: { _dramas_cd: { name: @_dramas_cd.name } }
    end

    assert_redirected_to _dramas_cd_url(DramasCd.last)
  end

  test "should show _dramas_cd" do
    get _dramas_cd_url(@_dramas_cd)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_cd_url(@_dramas_cd)
    assert_response :success
  end

  test "should update _dramas_cd" do
    patch _dramas_cd_url(@_dramas_cd), params: { _dramas_cd: { name: @_dramas_cd.name } }
    assert_redirected_to _dramas_cd_url(@_dramas_cd)
  end

  test "should destroy _dramas_cd" do
    assert_difference("DramasCd.count", -1) do
      delete _dramas_cd_url(@_dramas_cd)
    end

    assert_redirected_to _dramas_cds_url
  end
end
