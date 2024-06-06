require "test_helper"

class MangasEditeursVosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_editeurs_vo = _mangas_editeurs_vos(:one)
  end

  test "should get index" do
    get _mangas_editeurs_vos_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_editeurs_vo_url
    assert_response :success
  end

  test "should create _mangas_editeurs_vo" do
    assert_difference("MangasEditeursVo.count") do
      post _mangas_editeurs_vos_url, params: { _mangas_editeurs_vo: { name: @_mangas_editeurs_vo.name } }
    end

    assert_redirected_to _mangas_editeurs_vo_url(MangasEditeursVo.last)
  end

  test "should show _mangas_editeurs_vo" do
    get _mangas_editeurs_vo_url(@_mangas_editeurs_vo)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_editeurs_vo_url(@_mangas_editeurs_vo)
    assert_response :success
  end

  test "should update _mangas_editeurs_vo" do
    patch _mangas_editeurs_vo_url(@_mangas_editeurs_vo), params: { _mangas_editeurs_vo: { name: @_mangas_editeurs_vo.name } }
    assert_redirected_to _mangas_editeurs_vo_url(@_mangas_editeurs_vo)
  end

  test "should destroy _mangas_editeurs_vo" do
    assert_difference("MangasEditeursVo.count", -1) do
      delete _mangas_editeurs_vo_url(@_mangas_editeurs_vo)
    end

    assert_redirected_to _mangas_editeurs_vos_url
  end
end
