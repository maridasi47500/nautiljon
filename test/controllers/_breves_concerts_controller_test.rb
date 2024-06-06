require "test_helper"

class BrevesConcertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_concert = _breves_concerts(:one)
  end

  test "should get index" do
    get _breves_concerts_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_concert_url
    assert_response :success
  end

  test "should create _breves_concert" do
    assert_difference("BrevesConcert.count") do
      post _breves_concerts_url, params: { _breves_concert: { name: @_breves_concert.name } }
    end

    assert_redirected_to _breves_concert_url(BrevesConcert.last)
  end

  test "should show _breves_concert" do
    get _breves_concert_url(@_breves_concert)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_concert_url(@_breves_concert)
    assert_response :success
  end

  test "should update _breves_concert" do
    patch _breves_concert_url(@_breves_concert), params: { _breves_concert: { name: @_breves_concert.name } }
    assert_redirected_to _breves_concert_url(@_breves_concert)
  end

  test "should destroy _breves_concert" do
    assert_difference("BrevesConcert.count", -1) do
      delete _breves_concert_url(@_breves_concert)
    end

    assert_redirected_to _breves_concerts_url
  end
end
