require "test_helper"

class DoujinshisCensuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_censure = _doujinshis_censures(:one)
  end

  test "should get index" do
    get _doujinshis_censures_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_censure_url
    assert_response :success
  end

  test "should create _doujinshis_censure" do
    assert_difference("DoujinshisCensure.count") do
      post _doujinshis_censures_url, params: { _doujinshis_censure: { name: @_doujinshis_censure.name } }
    end

    assert_redirected_to _doujinshis_censure_url(DoujinshisCensure.last)
  end

  test "should show _doujinshis_censure" do
    get _doujinshis_censure_url(@_doujinshis_censure)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_censure_url(@_doujinshis_censure)
    assert_response :success
  end

  test "should update _doujinshis_censure" do
    patch _doujinshis_censure_url(@_doujinshis_censure), params: { _doujinshis_censure: { name: @_doujinshis_censure.name } }
    assert_redirected_to _doujinshis_censure_url(@_doujinshis_censure)
  end

  test "should destroy _doujinshis_censure" do
    assert_difference("DoujinshisCensure.count", -1) do
      delete _doujinshis_censure_url(@_doujinshis_censure)
    end

    assert_redirected_to _doujinshis_censures_url
  end
end
