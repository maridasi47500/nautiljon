require "test_helper"

class LivresAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_am = _livres_ams(:one)
  end

  test "should get index" do
    get _livres_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_am_url
    assert_response :success
  end

  test "should create _livres_am" do
    assert_difference("LivresAm.count") do
      post _livres_ams_url, params: { _livres_am: { name: @_livres_am.name } }
    end

    assert_redirected_to _livres_am_url(LivresAm.last)
  end

  test "should show _livres_am" do
    get _livres_am_url(@_livres_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_am_url(@_livres_am)
    assert_response :success
  end

  test "should update _livres_am" do
    patch _livres_am_url(@_livres_am), params: { _livres_am: { name: @_livres_am.name } }
    assert_redirected_to _livres_am_url(@_livres_am)
  end

  test "should destroy _livres_am" do
    assert_difference("LivresAm.count", -1) do
      delete _livres_am_url(@_livres_am)
    end

    assert_redirected_to _livres_ams_url
  end
end
