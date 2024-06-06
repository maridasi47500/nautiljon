require "test_helper"

class FilmsAsiatiquesEnSallesPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_en_salles_pay = _films_asiatiques_en_salles_pays(:one)
  end

  test "should get index" do
    get _films_asiatiques_en_salles_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_en_salles_pay_url
    assert_response :success
  end

  test "should create _films_asiatiques_en_salles_pay" do
    assert_difference("FilmsAsiatiquesEnSallesPay.count") do
      post _films_asiatiques_en_salles_pays_url, params: { _films_asiatiques_en_salles_pay: { name: @_films_asiatiques_en_salles_pay.name } }
    end

    assert_redirected_to _films_asiatiques_en_salles_pay_url(FilmsAsiatiquesEnSallesPay.last)
  end

  test "should show _films_asiatiques_en_salles_pay" do
    get _films_asiatiques_en_salles_pay_url(@_films_asiatiques_en_salles_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_en_salles_pay_url(@_films_asiatiques_en_salles_pay)
    assert_response :success
  end

  test "should update _films_asiatiques_en_salles_pay" do
    patch _films_asiatiques_en_salles_pay_url(@_films_asiatiques_en_salles_pay), params: { _films_asiatiques_en_salles_pay: { name: @_films_asiatiques_en_salles_pay.name } }
    assert_redirected_to _films_asiatiques_en_salles_pay_url(@_films_asiatiques_en_salles_pay)
  end

  test "should destroy _films_asiatiques_en_salles_pay" do
    assert_difference("FilmsAsiatiquesEnSallesPay.count", -1) do
      delete _films_asiatiques_en_salles_pay_url(@_films_asiatiques_en_salles_pay)
    end

    assert_redirected_to _films_asiatiques_en_salles_pays_url
  end
end
