require "test_helper"

class ArtbooksEditeursVosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_editeurs_vo = artbooks_editeurs_vos(:one)
  end

  test "should get index" do
    get artbooks_editeurs_vos_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_editeurs_vo_url
    assert_response :success
  end

  test "should create artbooks_editeurs_vo" do
    assert_difference("ArtbooksEditeursVo.count") do
      post artbooks_editeurs_vos_url, params: { artbooks_editeurs_vo: { name: @artbooks_editeurs_vo.name } }
    end

    assert_redirected_to artbooks_editeurs_vo_url(ArtbooksEditeursVo.last)
  end

  test "should show artbooks_editeurs_vo" do
    get artbooks_editeurs_vo_url(@artbooks_editeurs_vo)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_editeurs_vo_url(@artbooks_editeurs_vo)
    assert_response :success
  end

  test "should update artbooks_editeurs_vo" do
    patch artbooks_editeurs_vo_url(@artbooks_editeurs_vo), params: { artbooks_editeurs_vo: { name: @artbooks_editeurs_vo.name } }
    assert_redirected_to artbooks_editeurs_vo_url(@artbooks_editeurs_vo)
  end

  test "should destroy artbooks_editeurs_vo" do
    assert_difference("ArtbooksEditeursVo.count", -1) do
      delete artbooks_editeurs_vo_url(@artbooks_editeurs_vo)
    end

    assert_redirected_to artbooks_editeurs_vos_url
  end
end
