require "test_helper"

class AmvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amv = amvs(:one)
  end

  test "should get index" do
    get amvs_url
    assert_response :success
  end

  test "should get new" do
    get new_amv_url
    assert_response :success
  end

  test "should create amv" do
    assert_difference("Amv.count") do
      post amvs_url, params: { amv: { acceptregles: @amv.acceptregles, amvs_amv_id: @amv.amvs_amv_id, amvs_anime_id: @amv.amvs_anime_id, amvs_conventions_id: @amv.amvs_conventions_id, amvs_groupes_id: @amv.amvs_groupes_id, amvs_jv_id: @amv.amvs_jv_id, amvs_makers_id: @amv.amvs_makers_id, amvs_type_id: @amv.amvs_type_id, autre: @amv.autre, comment: @amv.comment, date_aaaa: @amv.date_aaaa, date_jj: @amv.date_jj, date_mm: @amv.date_mm, description: @amv.description, duree: @amv.duree, image: @amv.image, lien: @amv.lien, song: @amv.song, statut_prop: @amv.statut_prop, titre: @amv.titre, youtube: @amv.youtube } }
    end

    assert_redirected_to amv_url(Amv.last)
  end

  test "should show amv" do
    get amv_url(@amv)
    assert_response :success
  end

  test "should get edit" do
    get edit_amv_url(@amv)
    assert_response :success
  end

  test "should update amv" do
    patch amv_url(@amv), params: { amv: { acceptregles: @amv.acceptregles, amvs_amv_id: @amv.amvs_amv_id, amvs_anime_id: @amv.amvs_anime_id, amvs_conventions_id: @amv.amvs_conventions_id, amvs_groupes_id: @amv.amvs_groupes_id, amvs_jv_id: @amv.amvs_jv_id, amvs_makers_id: @amv.amvs_makers_id, amvs_type_id: @amv.amvs_type_id, autre: @amv.autre, comment: @amv.comment, date_aaaa: @amv.date_aaaa, date_jj: @amv.date_jj, date_mm: @amv.date_mm, description: @amv.description, duree: @amv.duree, image: @amv.image, lien: @amv.lien, song: @amv.song, statut_prop: @amv.statut_prop, titre: @amv.titre, youtube: @amv.youtube } }
    assert_redirected_to amv_url(@amv)
  end

  test "should destroy amv" do
    assert_difference("Amv.count", -1) do
      delete amv_url(@amv)
    end

    assert_redirected_to amvs_url
  end
end
