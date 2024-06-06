require "test_helper"

class DoujinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujin = _doujins(:one)
  end

  test "should get index" do
    get _doujins_url
    assert_response :success
  end

  test "should get new" do
    get new__doujin_url
    assert_response :success
  end

  test "should create _doujin" do
    assert_difference("Doujin.count") do
      post _doujins_url, params: { _doujin: { _doujins_am_id: @_doujin._doujins_am_id, _doujins_anime_id: @_doujin._doujins_anime_id, _doujins_artbook_id: @_doujin._doujins_artbook_id, _doujins_conventions_id: @_doujin._doujins_conventions_id, _doujins_doujin_id: @_doujin._doujins_doujin_id, _doujins_drama_id: @_doujin._doujins_drama_id, _doujins_genres_id: @_doujin._doujins_genres_id, _doujins_groupes_id: @_doujin._doujins_groupes_id, _doujins_jv_id: @_doujin._doujins_jv_id, _doujins_ln_id: @_doujin._doujins_ln_id, _doujins_people_id: @_doujin._doujins_people_id, _doujins_role_id: @_doujin._doujins_role_id, acceptregles: @_doujin.acceptregles, cercle: @_doujin.cercle, comment: @_doujin.comment, date_aaaa: @_doujin.date_aaaa, date_jj: @_doujin.date_jj, date_mm: @_doujin.date_mm, image: @_doujin.image, infos: @_doujin.infos, ref: @_doujin.ref, statut_prop: @_doujin.statut_prop, titre: @_doujin.titre, titre_alternatif: @_doujin.titre_alternatif, titre_original: @_doujin.titre_original, titre_original_latin: @_doujin.titre_original_latin } }
    end

    assert_redirected_to _doujin_url(Doujin.last)
  end

  test "should show _doujin" do
    get _doujin_url(@_doujin)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujin_url(@_doujin)
    assert_response :success
  end

  test "should update _doujin" do
    patch _doujin_url(@_doujin), params: { _doujin: { _doujins_am_id: @_doujin._doujins_am_id, _doujins_anime_id: @_doujin._doujins_anime_id, _doujins_artbook_id: @_doujin._doujins_artbook_id, _doujins_conventions_id: @_doujin._doujins_conventions_id, _doujins_doujin_id: @_doujin._doujins_doujin_id, _doujins_drama_id: @_doujin._doujins_drama_id, _doujins_genres_id: @_doujin._doujins_genres_id, _doujins_groupes_id: @_doujin._doujins_groupes_id, _doujins_jv_id: @_doujin._doujins_jv_id, _doujins_ln_id: @_doujin._doujins_ln_id, _doujins_people_id: @_doujin._doujins_people_id, _doujins_role_id: @_doujin._doujins_role_id, acceptregles: @_doujin.acceptregles, cercle: @_doujin.cercle, comment: @_doujin.comment, date_aaaa: @_doujin.date_aaaa, date_jj: @_doujin.date_jj, date_mm: @_doujin.date_mm, image: @_doujin.image, infos: @_doujin.infos, ref: @_doujin.ref, statut_prop: @_doujin.statut_prop, titre: @_doujin.titre, titre_alternatif: @_doujin.titre_alternatif, titre_original: @_doujin.titre_original, titre_original_latin: @_doujin.titre_original_latin } }
    assert_redirected_to _doujin_url(@_doujin)
  end

  test "should destroy _doujin" do
    assert_difference("Doujin.count", -1) do
      delete _doujin_url(@_doujin)
    end

    assert_redirected_to _doujins_url
  end
end
