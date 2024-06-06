require "test_helper"

class AnimesCdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_cd = animes_cds(:one)
  end

  test "should get index" do
    get animes_cds_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_cd_url
    assert_response :success
  end

  test "should create animes_cd" do
    assert_difference("AnimesCd.count") do
      post animes_cds_url, params: { animes_cd: { name: @animes_cd.name } }
    end

    assert_redirected_to animes_cd_url(AnimesCd.last)
  end

  test "should show animes_cd" do
    get animes_cd_url(@animes_cd)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_cd_url(@animes_cd)
    assert_response :success
  end

  test "should update animes_cd" do
    patch animes_cd_url(@animes_cd), params: { animes_cd: { name: @animes_cd.name } }
    assert_redirected_to animes_cd_url(@animes_cd)
  end

  test "should destroy animes_cd" do
    assert_difference("AnimesCd.count", -1) do
      delete animes_cd_url(@animes_cd)
    end

    assert_redirected_to animes_cds_url
  end
end
