require "test_helper"

class MangasEncoursVosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_encours_vo = _mangas_encours_vos(:one)
  end

  test "should get index" do
    get _mangas_encours_vos_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_encours_vo_url
    assert_response :success
  end

  test "should create _mangas_encours_vo" do
    assert_difference("MangasEncoursVo.count") do
      post _mangas_encours_vos_url, params: { _mangas_encours_vo: { name: @_mangas_encours_vo.name } }
    end

    assert_redirected_to _mangas_encours_vo_url(MangasEncoursVo.last)
  end

  test "should show _mangas_encours_vo" do
    get _mangas_encours_vo_url(@_mangas_encours_vo)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_encours_vo_url(@_mangas_encours_vo)
    assert_response :success
  end

  test "should update _mangas_encours_vo" do
    patch _mangas_encours_vo_url(@_mangas_encours_vo), params: { _mangas_encours_vo: { name: @_mangas_encours_vo.name } }
    assert_redirected_to _mangas_encours_vo_url(@_mangas_encours_vo)
  end

  test "should destroy _mangas_encours_vo" do
    assert_difference("MangasEncoursVo.count", -1) do
      delete _mangas_encours_vo_url(@_mangas_encours_vo)
    end

    assert_redirected_to _mangas_encours_vos_url
  end
end
