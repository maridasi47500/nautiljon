require "test_helper"

class DoujinshisGenresAvertisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_genres_averti = _doujinshis_genres_avertis(:one)
  end

  test "should get index" do
    get _doujinshis_genres_avertis_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_genres_averti_url
    assert_response :success
  end

  test "should create _doujinshis_genres_averti" do
    assert_difference("DoujinshisGenresAverti.count") do
      post _doujinshis_genres_avertis_url, params: { _doujinshis_genres_averti: { name: @_doujinshis_genres_averti.name } }
    end

    assert_redirected_to _doujinshis_genres_averti_url(DoujinshisGenresAverti.last)
  end

  test "should show _doujinshis_genres_averti" do
    get _doujinshis_genres_averti_url(@_doujinshis_genres_averti)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_genres_averti_url(@_doujinshis_genres_averti)
    assert_response :success
  end

  test "should update _doujinshis_genres_averti" do
    patch _doujinshis_genres_averti_url(@_doujinshis_genres_averti), params: { _doujinshis_genres_averti: { name: @_doujinshis_genres_averti.name } }
    assert_redirected_to _doujinshis_genres_averti_url(@_doujinshis_genres_averti)
  end

  test "should destroy _doujinshis_genres_averti" do
    assert_difference("DoujinshisGenresAverti.count", -1) do
      delete _doujinshis_genres_averti_url(@_doujinshis_genres_averti)
    end

    assert_redirected_to _doujinshis_genres_avertis_url
  end
end
