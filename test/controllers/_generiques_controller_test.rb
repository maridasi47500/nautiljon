require "test_helper"

class GeneriquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generique = _generiques(:one)
  end

  test "should get index" do
    get _generiques_url
    assert_response :success
  end

  test "should get new" do
    get new__generique_url
    assert_response :success
  end

  test "should create _generique" do
    assert_difference("Generique.count") do
      post _generiques_url, params: { _generique: { _generiques_generic_id: @_generique._generiques_generic_id, _generiques_id_anime_id: @_generique._generiques_id_anime_id, _generiques_staff_people_id: @_generique._generiques_staff_people_id, _generiques_staff_role_id: @_generique._generiques_staff_role_id, _generiques_type_id: @_generique._generiques_type_id, acceptregles: @_generique.acceptregles, comment: @_generique.comment, date_aaaa: @_generique.date_aaaa, date_jj: @_generique.date_jj, date_mm: @_generique.date_mm, description: @_generique.description, episodes: @_generique.episodes, instrumental: @_generique.instrumental, membre_show: @_generique.membre_show, number: @_generique.number, paroles: @_generique.paroles, paroles_trad: @_generique.paroles_trad, statut_prop: @_generique.statut_prop, titre: @_generique.titre, titre_original: @_generique.titre_original, youtube: @_generique.youtube } }
    end

    assert_redirected_to _generique_url(Generique.last)
  end

  test "should show _generique" do
    get _generique_url(@_generique)
    assert_response :success
  end

  test "should get edit" do
    get edit__generique_url(@_generique)
    assert_response :success
  end

  test "should update _generique" do
    patch _generique_url(@_generique), params: { _generique: { _generiques_generic_id: @_generique._generiques_generic_id, _generiques_id_anime_id: @_generique._generiques_id_anime_id, _generiques_staff_people_id: @_generique._generiques_staff_people_id, _generiques_staff_role_id: @_generique._generiques_staff_role_id, _generiques_type_id: @_generique._generiques_type_id, acceptregles: @_generique.acceptregles, comment: @_generique.comment, date_aaaa: @_generique.date_aaaa, date_jj: @_generique.date_jj, date_mm: @_generique.date_mm, description: @_generique.description, episodes: @_generique.episodes, instrumental: @_generique.instrumental, membre_show: @_generique.membre_show, number: @_generique.number, paroles: @_generique.paroles, paroles_trad: @_generique.paroles_trad, statut_prop: @_generique.statut_prop, titre: @_generique.titre, titre_original: @_generique.titre_original, youtube: @_generique.youtube } }
    assert_redirected_to _generique_url(@_generique)
  end

  test "should destroy _generique" do
    assert_difference("Generique.count", -1) do
      delete _generique_url(@_generique)
    end

    assert_redirected_to _generiques_url
  end
end
