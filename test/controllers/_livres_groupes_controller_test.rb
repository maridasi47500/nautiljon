require "test_helper"

class LivresGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_groupe = _livres_groupes(:one)
  end

  test "should get index" do
    get _livres_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_groupe_url
    assert_response :success
  end

  test "should create _livres_groupe" do
    assert_difference("LivresGroupe.count") do
      post _livres_groupes_url, params: { _livres_groupe: { name: @_livres_groupe.name } }
    end

    assert_redirected_to _livres_groupe_url(LivresGroupe.last)
  end

  test "should show _livres_groupe" do
    get _livres_groupe_url(@_livres_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_groupe_url(@_livres_groupe)
    assert_response :success
  end

  test "should update _livres_groupe" do
    patch _livres_groupe_url(@_livres_groupe), params: { _livres_groupe: { name: @_livres_groupe.name } }
    assert_redirected_to _livres_groupe_url(@_livres_groupe)
  end

  test "should destroy _livres_groupe" do
    assert_difference("LivresGroupe.count", -1) do
      delete _livres_groupe_url(@_livres_groupe)
    end

    assert_redirected_to _livres_groupes_url
  end
end
