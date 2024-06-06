require "test_helper"

class GoodiesEditeursVfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_editeurs_vf = _goodies_editeurs_vfs(:one)
  end

  test "should get index" do
    get _goodies_editeurs_vfs_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_editeurs_vf_url
    assert_response :success
  end

  test "should create _goodies_editeurs_vf" do
    assert_difference("GoodiesEditeursVf.count") do
      post _goodies_editeurs_vfs_url, params: { _goodies_editeurs_vf: { name: @_goodies_editeurs_vf.name } }
    end

    assert_redirected_to _goodies_editeurs_vf_url(GoodiesEditeursVf.last)
  end

  test "should show _goodies_editeurs_vf" do
    get _goodies_editeurs_vf_url(@_goodies_editeurs_vf)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_editeurs_vf_url(@_goodies_editeurs_vf)
    assert_response :success
  end

  test "should update _goodies_editeurs_vf" do
    patch _goodies_editeurs_vf_url(@_goodies_editeurs_vf), params: { _goodies_editeurs_vf: { name: @_goodies_editeurs_vf.name } }
    assert_redirected_to _goodies_editeurs_vf_url(@_goodies_editeurs_vf)
  end

  test "should destroy _goodies_editeurs_vf" do
    assert_difference("GoodiesEditeursVf.count", -1) do
      delete _goodies_editeurs_vf_url(@_goodies_editeurs_vf)
    end

    assert_redirected_to _goodies_editeurs_vfs_url
  end
end
