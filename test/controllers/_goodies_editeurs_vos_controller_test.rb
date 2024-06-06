require "test_helper"

class GoodiesEditeursVosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_editeurs_vo = _goodies_editeurs_vos(:one)
  end

  test "should get index" do
    get _goodies_editeurs_vos_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_editeurs_vo_url
    assert_response :success
  end

  test "should create _goodies_editeurs_vo" do
    assert_difference("GoodiesEditeursVo.count") do
      post _goodies_editeurs_vos_url, params: { _goodies_editeurs_vo: { name: @_goodies_editeurs_vo.name } }
    end

    assert_redirected_to _goodies_editeurs_vo_url(GoodiesEditeursVo.last)
  end

  test "should show _goodies_editeurs_vo" do
    get _goodies_editeurs_vo_url(@_goodies_editeurs_vo)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_editeurs_vo_url(@_goodies_editeurs_vo)
    assert_response :success
  end

  test "should update _goodies_editeurs_vo" do
    patch _goodies_editeurs_vo_url(@_goodies_editeurs_vo), params: { _goodies_editeurs_vo: { name: @_goodies_editeurs_vo.name } }
    assert_redirected_to _goodies_editeurs_vo_url(@_goodies_editeurs_vo)
  end

  test "should destroy _goodies_editeurs_vo" do
    assert_difference("GoodiesEditeursVo.count", -1) do
      delete _goodies_editeurs_vo_url(@_goodies_editeurs_vo)
    end

    assert_redirected_to _goodies_editeurs_vos_url
  end
end
