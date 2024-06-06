require "test_helper"

class ArtbooksEditeursVfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_editeurs_vf = artbooks_editeurs_vfs(:one)
  end

  test "should get index" do
    get artbooks_editeurs_vfs_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_editeurs_vf_url
    assert_response :success
  end

  test "should create artbooks_editeurs_vf" do
    assert_difference("ArtbooksEditeursVf.count") do
      post artbooks_editeurs_vfs_url, params: { artbooks_editeurs_vf: { name: @artbooks_editeurs_vf.name } }
    end

    assert_redirected_to artbooks_editeurs_vf_url(ArtbooksEditeursVf.last)
  end

  test "should show artbooks_editeurs_vf" do
    get artbooks_editeurs_vf_url(@artbooks_editeurs_vf)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_editeurs_vf_url(@artbooks_editeurs_vf)
    assert_response :success
  end

  test "should update artbooks_editeurs_vf" do
    patch artbooks_editeurs_vf_url(@artbooks_editeurs_vf), params: { artbooks_editeurs_vf: { name: @artbooks_editeurs_vf.name } }
    assert_redirected_to artbooks_editeurs_vf_url(@artbooks_editeurs_vf)
  end

  test "should destroy artbooks_editeurs_vf" do
    assert_difference("ArtbooksEditeursVf.count", -1) do
      delete artbooks_editeurs_vf_url(@artbooks_editeurs_vf)
    end

    assert_redirected_to artbooks_editeurs_vfs_url
  end
end
