require "test_helper"

class JeuxVideosStaffSocietesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_staff_societe = _jeux_videos_staff_societes(:one)
  end

  test "should get index" do
    get _jeux_videos_staff_societes_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_staff_societe_url
    assert_response :success
  end

  test "should create _jeux_videos_staff_societe" do
    assert_difference("JeuxVideosStaffSociete.count") do
      post _jeux_videos_staff_societes_url, params: { _jeux_videos_staff_societe: { name: @_jeux_videos_staff_societe.name } }
    end

    assert_redirected_to _jeux_videos_staff_societe_url(JeuxVideosStaffSociete.last)
  end

  test "should show _jeux_videos_staff_societe" do
    get _jeux_videos_staff_societe_url(@_jeux_videos_staff_societe)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_staff_societe_url(@_jeux_videos_staff_societe)
    assert_response :success
  end

  test "should update _jeux_videos_staff_societe" do
    patch _jeux_videos_staff_societe_url(@_jeux_videos_staff_societe), params: { _jeux_videos_staff_societe: { name: @_jeux_videos_staff_societe.name } }
    assert_redirected_to _jeux_videos_staff_societe_url(@_jeux_videos_staff_societe)
  end

  test "should destroy _jeux_videos_staff_societe" do
    assert_difference("JeuxVideosStaffSociete.count", -1) do
      delete _jeux_videos_staff_societe_url(@_jeux_videos_staff_societe)
    end

    assert_redirected_to _jeux_videos_staff_societes_url
  end
end
