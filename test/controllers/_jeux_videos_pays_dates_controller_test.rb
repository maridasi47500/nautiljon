require "test_helper"

class JeuxVideosPaysDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_pays_date = _jeux_videos_pays_dates(:one)
  end

  test "should get index" do
    get _jeux_videos_pays_dates_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_pays_date_url
    assert_response :success
  end

  test "should create _jeux_videos_pays_date" do
    assert_difference("JeuxVideosPaysDate.count") do
      post _jeux_videos_pays_dates_url, params: { _jeux_videos_pays_date: { name: @_jeux_videos_pays_date.name } }
    end

    assert_redirected_to _jeux_videos_pays_date_url(JeuxVideosPaysDate.last)
  end

  test "should show _jeux_videos_pays_date" do
    get _jeux_videos_pays_date_url(@_jeux_videos_pays_date)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_pays_date_url(@_jeux_videos_pays_date)
    assert_response :success
  end

  test "should update _jeux_videos_pays_date" do
    patch _jeux_videos_pays_date_url(@_jeux_videos_pays_date), params: { _jeux_videos_pays_date: { name: @_jeux_videos_pays_date.name } }
    assert_redirected_to _jeux_videos_pays_date_url(@_jeux_videos_pays_date)
  end

  test "should destroy _jeux_videos_pays_date" do
    assert_difference("JeuxVideosPaysDate.count", -1) do
      delete _jeux_videos_pays_date_url(@_jeux_videos_pays_date)
    end

    assert_redirected_to _jeux_videos_pays_dates_url
  end
end
