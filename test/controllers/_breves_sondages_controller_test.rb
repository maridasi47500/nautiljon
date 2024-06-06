require "test_helper"

class BrevesSondagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_sondage = _breves_sondages(:one)
  end

  test "should get index" do
    get _breves_sondages_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_sondage_url
    assert_response :success
  end

  test "should create _breves_sondage" do
    assert_difference("BrevesSondage.count") do
      post _breves_sondages_url, params: { _breves_sondage: { name: @_breves_sondage.name } }
    end

    assert_redirected_to _breves_sondage_url(BrevesSondage.last)
  end

  test "should show _breves_sondage" do
    get _breves_sondage_url(@_breves_sondage)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_sondage_url(@_breves_sondage)
    assert_response :success
  end

  test "should update _breves_sondage" do
    patch _breves_sondage_url(@_breves_sondage), params: { _breves_sondage: { name: @_breves_sondage.name } }
    assert_redirected_to _breves_sondage_url(@_breves_sondage)
  end

  test "should destroy _breves_sondage" do
    assert_difference("BrevesSondage.count", -1) do
      delete _breves_sondage_url(@_breves_sondage)
    end

    assert_redirected_to _breves_sondages_url
  end
end
