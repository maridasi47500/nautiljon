require "test_helper"

class LivresEditeursVosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_editeurs_vo = _livres_editeurs_vos(:one)
  end

  test "should get index" do
    get _livres_editeurs_vos_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_editeurs_vo_url
    assert_response :success
  end

  test "should create _livres_editeurs_vo" do
    assert_difference("LivresEditeursVo.count") do
      post _livres_editeurs_vos_url, params: { _livres_editeurs_vo: { name: @_livres_editeurs_vo.name } }
    end

    assert_redirected_to _livres_editeurs_vo_url(LivresEditeursVo.last)
  end

  test "should show _livres_editeurs_vo" do
    get _livres_editeurs_vo_url(@_livres_editeurs_vo)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_editeurs_vo_url(@_livres_editeurs_vo)
    assert_response :success
  end

  test "should update _livres_editeurs_vo" do
    patch _livres_editeurs_vo_url(@_livres_editeurs_vo), params: { _livres_editeurs_vo: { name: @_livres_editeurs_vo.name } }
    assert_redirected_to _livres_editeurs_vo_url(@_livres_editeurs_vo)
  end

  test "should destroy _livres_editeurs_vo" do
    assert_difference("LivresEditeursVo.count", -1) do
      delete _livres_editeurs_vo_url(@_livres_editeurs_vo)
    end

    assert_redirected_to _livres_editeurs_vos_url
  end
end
