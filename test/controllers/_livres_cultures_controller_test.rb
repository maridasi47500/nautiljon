require "test_helper"

class LivresCulturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_culture = _livres_cultures(:one)
  end

  test "should get index" do
    get _livres_cultures_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_culture_url
    assert_response :success
  end

  test "should create _livres_culture" do
    assert_difference("LivresCulture.count") do
      post _livres_cultures_url, params: { _livres_culture: { name: @_livres_culture.name } }
    end

    assert_redirected_to _livres_culture_url(LivresCulture.last)
  end

  test "should show _livres_culture" do
    get _livres_culture_url(@_livres_culture)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_culture_url(@_livres_culture)
    assert_response :success
  end

  test "should update _livres_culture" do
    patch _livres_culture_url(@_livres_culture), params: { _livres_culture: { name: @_livres_culture.name } }
    assert_redirected_to _livres_culture_url(@_livres_culture)
  end

  test "should destroy _livres_culture" do
    assert_difference("LivresCulture.count", -1) do
      delete _livres_culture_url(@_livres_culture)
    end

    assert_redirected_to _livres_cultures_url
  end
end
