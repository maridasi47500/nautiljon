require "test_helper"

class JeuxVideosPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_pay = _jeux_videos_pays(:one)
  end

  test "should get index" do
    get _jeux_videos_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_pay_url
    assert_response :success
  end

  test "should create _jeux_videos_pay" do
    assert_difference("JeuxVideosPay.count") do
      post _jeux_videos_pays_url, params: { _jeux_videos_pay: { name: @_jeux_videos_pay.name } }
    end

    assert_redirected_to _jeux_videos_pay_url(JeuxVideosPay.last)
  end

  test "should show _jeux_videos_pay" do
    get _jeux_videos_pay_url(@_jeux_videos_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_pay_url(@_jeux_videos_pay)
    assert_response :success
  end

  test "should update _jeux_videos_pay" do
    patch _jeux_videos_pay_url(@_jeux_videos_pay), params: { _jeux_videos_pay: { name: @_jeux_videos_pay.name } }
    assert_redirected_to _jeux_videos_pay_url(@_jeux_videos_pay)
  end

  test "should destroy _jeux_videos_pay" do
    assert_difference("JeuxVideosPay.count", -1) do
      delete _jeux_videos_pay_url(@_jeux_videos_pay)
    end

    assert_redirected_to _jeux_videos_pays_url
  end
end
