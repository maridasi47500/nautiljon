require "test_helper"

class DramasProgrammesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_programme = _dramas_programmes(:one)
  end

  test "should get index" do
    get _dramas_programmes_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_programme_url
    assert_response :success
  end

  test "should create _dramas_programme" do
    assert_difference("DramasProgramme.count") do
      post _dramas_programmes_url, params: { _dramas_programme: { name: @_dramas_programme.name } }
    end

    assert_redirected_to _dramas_programme_url(DramasProgramme.last)
  end

  test "should show _dramas_programme" do
    get _dramas_programme_url(@_dramas_programme)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_programme_url(@_dramas_programme)
    assert_response :success
  end

  test "should update _dramas_programme" do
    patch _dramas_programme_url(@_dramas_programme), params: { _dramas_programme: { name: @_dramas_programme.name } }
    assert_redirected_to _dramas_programme_url(@_dramas_programme)
  end

  test "should destroy _dramas_programme" do
    assert_difference("DramasProgramme.count", -1) do
      delete _dramas_programme_url(@_dramas_programme)
    end

    assert_redirected_to _dramas_programmes_url
  end
end
