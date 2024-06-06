require "test_helper"

class MangasEncoursVfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_encours_vf = _mangas_encours_vfs(:one)
  end

  test "should get index" do
    get _mangas_encours_vfs_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_encours_vf_url
    assert_response :success
  end

  test "should create _mangas_encours_vf" do
    assert_difference("MangasEncoursVf.count") do
      post _mangas_encours_vfs_url, params: { _mangas_encours_vf: { name: @_mangas_encours_vf.name } }
    end

    assert_redirected_to _mangas_encours_vf_url(MangasEncoursVf.last)
  end

  test "should show _mangas_encours_vf" do
    get _mangas_encours_vf_url(@_mangas_encours_vf)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_encours_vf_url(@_mangas_encours_vf)
    assert_response :success
  end

  test "should update _mangas_encours_vf" do
    patch _mangas_encours_vf_url(@_mangas_encours_vf), params: { _mangas_encours_vf: { name: @_mangas_encours_vf.name } }
    assert_redirected_to _mangas_encours_vf_url(@_mangas_encours_vf)
  end

  test "should destroy _mangas_encours_vf" do
    assert_difference("MangasEncoursVf.count", -1) do
      delete _mangas_encours_vf_url(@_mangas_encours_vf)
    end

    assert_redirected_to _mangas_encours_vfs_url
  end
end
