require "test_helper"

class LivresEditeursVfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_editeurs_vf = _livres_editeurs_vfs(:one)
  end

  test "should get index" do
    get _livres_editeurs_vfs_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_editeurs_vf_url
    assert_response :success
  end

  test "should create _livres_editeurs_vf" do
    assert_difference("LivresEditeursVf.count") do
      post _livres_editeurs_vfs_url, params: { _livres_editeurs_vf: { name: @_livres_editeurs_vf.name } }
    end

    assert_redirected_to _livres_editeurs_vf_url(LivresEditeursVf.last)
  end

  test "should show _livres_editeurs_vf" do
    get _livres_editeurs_vf_url(@_livres_editeurs_vf)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_editeurs_vf_url(@_livres_editeurs_vf)
    assert_response :success
  end

  test "should update _livres_editeurs_vf" do
    patch _livres_editeurs_vf_url(@_livres_editeurs_vf), params: { _livres_editeurs_vf: { name: @_livres_editeurs_vf.name } }
    assert_redirected_to _livres_editeurs_vf_url(@_livres_editeurs_vf)
  end

  test "should destroy _livres_editeurs_vf" do
    assert_difference("LivresEditeursVf.count", -1) do
      delete _livres_editeurs_vf_url(@_livres_editeurs_vf)
    end

    assert_redirected_to _livres_editeurs_vfs_url
  end
end
