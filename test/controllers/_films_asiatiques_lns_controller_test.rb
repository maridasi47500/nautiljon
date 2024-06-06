require "test_helper"

class FilmsAsiatiquesLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_ln = _films_asiatiques_lns(:one)
  end

  test "should get index" do
    get _films_asiatiques_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_ln_url
    assert_response :success
  end

  test "should create _films_asiatiques_ln" do
    assert_difference("FilmsAsiatiquesLn.count") do
      post _films_asiatiques_lns_url, params: { _films_asiatiques_ln: { name: @_films_asiatiques_ln.name } }
    end

    assert_redirected_to _films_asiatiques_ln_url(FilmsAsiatiquesLn.last)
  end

  test "should show _films_asiatiques_ln" do
    get _films_asiatiques_ln_url(@_films_asiatiques_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_ln_url(@_films_asiatiques_ln)
    assert_response :success
  end

  test "should update _films_asiatiques_ln" do
    patch _films_asiatiques_ln_url(@_films_asiatiques_ln), params: { _films_asiatiques_ln: { name: @_films_asiatiques_ln.name } }
    assert_redirected_to _films_asiatiques_ln_url(@_films_asiatiques_ln)
  end

  test "should destroy _films_asiatiques_ln" do
    assert_difference("FilmsAsiatiquesLn.count", -1) do
      delete _films_asiatiques_ln_url(@_films_asiatiques_ln)
    end

    assert_redirected_to _films_asiatiques_lns_url
  end
end
