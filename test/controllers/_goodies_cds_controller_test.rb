require "test_helper"

class GoodiesCdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_cd = _goodies_cds(:one)
  end

  test "should get index" do
    get _goodies_cds_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_cd_url
    assert_response :success
  end

  test "should create _goodies_cd" do
    assert_difference("GoodiesCd.count") do
      post _goodies_cds_url, params: { _goodies_cd: { name: @_goodies_cd.name } }
    end

    assert_redirected_to _goodies_cd_url(GoodiesCd.last)
  end

  test "should show _goodies_cd" do
    get _goodies_cd_url(@_goodies_cd)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_cd_url(@_goodies_cd)
    assert_response :success
  end

  test "should update _goodies_cd" do
    patch _goodies_cd_url(@_goodies_cd), params: { _goodies_cd: { name: @_goodies_cd.name } }
    assert_redirected_to _goodies_cd_url(@_goodies_cd)
  end

  test "should destroy _goodies_cd" do
    assert_difference("GoodiesCd.count", -1) do
      delete _goodies_cd_url(@_goodies_cd)
    end

    assert_redirected_to _goodies_cds_url
  end
end
