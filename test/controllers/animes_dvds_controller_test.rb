require "test_helper"

class AnimesDvdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_dvd = animes_dvds(:one)
  end

  test "should get index" do
    get animes_dvds_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_dvd_url
    assert_response :success
  end

  test "should create animes_dvd" do
    assert_difference("AnimesDvd.count") do
      post animes_dvds_url, params: { animes_dvd: { name: @animes_dvd.name } }
    end

    assert_redirected_to animes_dvd_url(AnimesDvd.last)
  end

  test "should show animes_dvd" do
    get animes_dvd_url(@animes_dvd)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_dvd_url(@animes_dvd)
    assert_response :success
  end

  test "should update animes_dvd" do
    patch animes_dvd_url(@animes_dvd), params: { animes_dvd: { name: @animes_dvd.name } }
    assert_redirected_to animes_dvd_url(@animes_dvd)
  end

  test "should destroy animes_dvd" do
    assert_difference("AnimesDvd.count", -1) do
      delete animes_dvd_url(@animes_dvd)
    end

    assert_redirected_to animes_dvds_url
  end
end
