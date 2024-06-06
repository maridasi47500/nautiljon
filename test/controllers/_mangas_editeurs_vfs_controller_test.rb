require "test_helper"

class MangasEditeursVfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_editeurs_vf = _mangas_editeurs_vfs(:one)
  end

  test "should get index" do
    get _mangas_editeurs_vfs_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_editeurs_vf_url
    assert_response :success
  end

  test "should create _mangas_editeurs_vf" do
    assert_difference("MangasEditeursVf.count") do
      post _mangas_editeurs_vfs_url, params: { _mangas_editeurs_vf: { name: @_mangas_editeurs_vf.name } }
    end

    assert_redirected_to _mangas_editeurs_vf_url(MangasEditeursVf.last)
  end

  test "should show _mangas_editeurs_vf" do
    get _mangas_editeurs_vf_url(@_mangas_editeurs_vf)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_editeurs_vf_url(@_mangas_editeurs_vf)
    assert_response :success
  end

  test "should update _mangas_editeurs_vf" do
    patch _mangas_editeurs_vf_url(@_mangas_editeurs_vf), params: { _mangas_editeurs_vf: { name: @_mangas_editeurs_vf.name } }
    assert_redirected_to _mangas_editeurs_vf_url(@_mangas_editeurs_vf)
  end

  test "should destroy _mangas_editeurs_vf" do
    assert_difference("MangasEditeursVf.count", -1) do
      delete _mangas_editeurs_vf_url(@_mangas_editeurs_vf)
    end

    assert_redirected_to _mangas_editeurs_vfs_url
  end
end
