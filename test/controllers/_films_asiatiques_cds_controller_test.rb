require "test_helper"

class FilmsAsiatiquesCdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_cd = _films_asiatiques_cds(:one)
  end

  test "should get index" do
    get _films_asiatiques_cds_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_cd_url
    assert_response :success
  end

  test "should create _films_asiatiques_cd" do
    assert_difference("FilmsAsiatiquesCd.count") do
      post _films_asiatiques_cds_url, params: { _films_asiatiques_cd: { name: @_films_asiatiques_cd.name } }
    end

    assert_redirected_to _films_asiatiques_cd_url(FilmsAsiatiquesCd.last)
  end

  test "should show _films_asiatiques_cd" do
    get _films_asiatiques_cd_url(@_films_asiatiques_cd)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_cd_url(@_films_asiatiques_cd)
    assert_response :success
  end

  test "should update _films_asiatiques_cd" do
    patch _films_asiatiques_cd_url(@_films_asiatiques_cd), params: { _films_asiatiques_cd: { name: @_films_asiatiques_cd.name } }
    assert_redirected_to _films_asiatiques_cd_url(@_films_asiatiques_cd)
  end

  test "should destroy _films_asiatiques_cd" do
    assert_difference("FilmsAsiatiquesCd.count", -1) do
      delete _films_asiatiques_cd_url(@_films_asiatiques_cd)
    end

    assert_redirected_to _films_asiatiques_cds_url
  end
end
