require "test_helper"

class AnimesEditeursVfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_editeurs_vf = animes_editeurs_vfs(:one)
  end

  test "should get index" do
    get animes_editeurs_vfs_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_editeurs_vf_url
    assert_response :success
  end

  test "should create animes_editeurs_vf" do
    assert_difference("AnimesEditeursVf.count") do
      post animes_editeurs_vfs_url, params: { animes_editeurs_vf: { name: @animes_editeurs_vf.name } }
    end

    assert_redirected_to animes_editeurs_vf_url(AnimesEditeursVf.last)
  end

  test "should show animes_editeurs_vf" do
    get animes_editeurs_vf_url(@animes_editeurs_vf)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_editeurs_vf_url(@animes_editeurs_vf)
    assert_response :success
  end

  test "should update animes_editeurs_vf" do
    patch animes_editeurs_vf_url(@animes_editeurs_vf), params: { animes_editeurs_vf: { name: @animes_editeurs_vf.name } }
    assert_redirected_to animes_editeurs_vf_url(@animes_editeurs_vf)
  end

  test "should destroy animes_editeurs_vf" do
    assert_difference("AnimesEditeursVf.count", -1) do
      delete animes_editeurs_vf_url(@animes_editeurs_vf)
    end

    assert_redirected_to animes_editeurs_vfs_url
  end
end
