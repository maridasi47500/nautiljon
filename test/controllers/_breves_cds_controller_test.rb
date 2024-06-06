require "test_helper"

class BrevesCdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_cd = _breves_cds(:one)
  end

  test "should get index" do
    get _breves_cds_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_cd_url
    assert_response :success
  end

  test "should create _breves_cd" do
    assert_difference("BrevesCd.count") do
      post _breves_cds_url, params: { _breves_cd: { name: @_breves_cd.name } }
    end

    assert_redirected_to _breves_cd_url(BrevesCd.last)
  end

  test "should show _breves_cd" do
    get _breves_cd_url(@_breves_cd)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_cd_url(@_breves_cd)
    assert_response :success
  end

  test "should update _breves_cd" do
    patch _breves_cd_url(@_breves_cd), params: { _breves_cd: { name: @_breves_cd.name } }
    assert_redirected_to _breves_cd_url(@_breves_cd)
  end

  test "should destroy _breves_cd" do
    assert_difference("BrevesCd.count", -1) do
      delete _breves_cd_url(@_breves_cd)
    end

    assert_redirected_to _breves_cds_url
  end
end
