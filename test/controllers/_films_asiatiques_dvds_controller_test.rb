require "test_helper"

class FilmsAsiatiquesDvdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_dvd = _films_asiatiques_dvds(:one)
  end

  test "should get index" do
    get _films_asiatiques_dvds_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_dvd_url
    assert_response :success
  end

  test "should create _films_asiatiques_dvd" do
    assert_difference("FilmsAsiatiquesDvd.count") do
      post _films_asiatiques_dvds_url, params: { _films_asiatiques_dvd: { name: @_films_asiatiques_dvd.name } }
    end

    assert_redirected_to _films_asiatiques_dvd_url(FilmsAsiatiquesDvd.last)
  end

  test "should show _films_asiatiques_dvd" do
    get _films_asiatiques_dvd_url(@_films_asiatiques_dvd)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_dvd_url(@_films_asiatiques_dvd)
    assert_response :success
  end

  test "should update _films_asiatiques_dvd" do
    patch _films_asiatiques_dvd_url(@_films_asiatiques_dvd), params: { _films_asiatiques_dvd: { name: @_films_asiatiques_dvd.name } }
    assert_redirected_to _films_asiatiques_dvd_url(@_films_asiatiques_dvd)
  end

  test "should destroy _films_asiatiques_dvd" do
    assert_difference("FilmsAsiatiquesDvd.count", -1) do
      delete _films_asiatiques_dvd_url(@_films_asiatiques_dvd)
    end

    assert_redirected_to _films_asiatiques_dvds_url
  end
end
