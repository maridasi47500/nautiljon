require "test_helper"

class LivresTypeSecondairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_type_secondaire = _livres_type_secondaires(:one)
  end

  test "should get index" do
    get _livres_type_secondaires_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_type_secondaire_url
    assert_response :success
  end

  test "should create _livres_type_secondaire" do
    assert_difference("LivresTypeSecondaire.count") do
      post _livres_type_secondaires_url, params: { _livres_type_secondaire: { name: @_livres_type_secondaire.name } }
    end

    assert_redirected_to _livres_type_secondaire_url(LivresTypeSecondaire.last)
  end

  test "should show _livres_type_secondaire" do
    get _livres_type_secondaire_url(@_livres_type_secondaire)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_type_secondaire_url(@_livres_type_secondaire)
    assert_response :success
  end

  test "should update _livres_type_secondaire" do
    patch _livres_type_secondaire_url(@_livres_type_secondaire), params: { _livres_type_secondaire: { name: @_livres_type_secondaire.name } }
    assert_redirected_to _livres_type_secondaire_url(@_livres_type_secondaire)
  end

  test "should destroy _livres_type_secondaire" do
    assert_difference("LivresTypeSecondaire.count", -1) do
      delete _livres_type_secondaire_url(@_livres_type_secondaire)
    end

    assert_redirected_to _livres_type_secondaires_url
  end
end
