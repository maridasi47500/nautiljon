require "test_helper"

class ParolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_parole = _paroles(:one)
  end

  test "should get index" do
    get _paroles_url
    assert_response :success
  end

  test "should get new" do
    get new__parole_url
    assert_response :success
  end

  test "should create _parole" do
    assert_difference("Parole.count") do
      post _paroles_url, params: { _parole: { _paroles_parole_id: @_parole._paroles_parole_id, _paroles_staff_people_id: @_parole._paroles_staff_people_id, _paroles_staff_role_id: @_parole._paroles_staff_role_id, acceptregles: @_parole.acceptregles, comment: @_parole.comment, description: @_parole.description, instrumental: @_parole.instrumental, membre_show: @_parole.membre_show, paroles: @_parole.paroles, paroles_trad: @_parole.paroles_trad, source: @_parole.source, statut_prop: @_parole.statut_prop, titre: @_parole.titre, titre_alternatif: @_parole.titre_alternatif, titre_original: @_parole.titre_original, titre_original_latin: @_parole.titre_original_latin } }
    end

    assert_redirected_to _parole_url(Parole.last)
  end

  test "should show _parole" do
    get _parole_url(@_parole)
    assert_response :success
  end

  test "should get edit" do
    get edit__parole_url(@_parole)
    assert_response :success
  end

  test "should update _parole" do
    patch _parole_url(@_parole), params: { _parole: { _paroles_parole_id: @_parole._paroles_parole_id, _paroles_staff_people_id: @_parole._paroles_staff_people_id, _paroles_staff_role_id: @_parole._paroles_staff_role_id, acceptregles: @_parole.acceptregles, comment: @_parole.comment, description: @_parole.description, instrumental: @_parole.instrumental, membre_show: @_parole.membre_show, paroles: @_parole.paroles, paroles_trad: @_parole.paroles_trad, source: @_parole.source, statut_prop: @_parole.statut_prop, titre: @_parole.titre, titre_alternatif: @_parole.titre_alternatif, titre_original: @_parole.titre_original, titre_original_latin: @_parole.titre_original_latin } }
    assert_redirected_to _parole_url(@_parole)
  end

  test "should destroy _parole" do
    assert_difference("Parole.count", -1) do
      delete _parole_url(@_parole)
    end

    assert_redirected_to _paroles_url
  end
end
