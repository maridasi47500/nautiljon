require "test_helper"

class DoujinshisGratuitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_gratuit = _doujinshis_gratuits(:one)
  end

  test "should get index" do
    get _doujinshis_gratuits_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_gratuit_url
    assert_response :success
  end

  test "should create _doujinshis_gratuit" do
    assert_difference("DoujinshisGratuit.count") do
      post _doujinshis_gratuits_url, params: { _doujinshis_gratuit: { name: @_doujinshis_gratuit.name } }
    end

    assert_redirected_to _doujinshis_gratuit_url(DoujinshisGratuit.last)
  end

  test "should show _doujinshis_gratuit" do
    get _doujinshis_gratuit_url(@_doujinshis_gratuit)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_gratuit_url(@_doujinshis_gratuit)
    assert_response :success
  end

  test "should update _doujinshis_gratuit" do
    patch _doujinshis_gratuit_url(@_doujinshis_gratuit), params: { _doujinshis_gratuit: { name: @_doujinshis_gratuit.name } }
    assert_redirected_to _doujinshis_gratuit_url(@_doujinshis_gratuit)
  end

  test "should destroy _doujinshis_gratuit" do
    assert_difference("DoujinshisGratuit.count", -1) do
      delete _doujinshis_gratuit_url(@_doujinshis_gratuit)
    end

    assert_redirected_to _doujinshis_gratuits_url
  end
end
