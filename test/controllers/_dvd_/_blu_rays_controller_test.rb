require "test_helper"

class Dvd::BluRaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_ray = _dvd___blu_rays(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_ray_url
    assert_response :success
  end

  test "should create _dvd___blu_ray" do
    assert_difference("Dvd::BluRay.count") do
      post _dvd___blu_rays_url, params: { _dvd___blu_ray: { _dvd_/_blu_rays_actualite_id: @_dvd___blu_ray._dvd_/_blu_rays_actualite_id, _dvd_/_blu_rays_actualite_mini_id: @_dvd___blu_ray._dvd_/_blu_rays_actualite_mini_id, _dvd_/_blu_rays_am_id: @_dvd___blu_ray._dvd_/_blu_rays_am_id, _dvd_/_blu_rays_anime_id: @_dvd___blu_ray._dvd_/_blu_rays_anime_id, _dvd_/_blu_rays_drama_id: @_dvd___blu_ray._dvd_/_blu_rays_drama_id, _dvd_/_blu_rays_editeurs_id: @_dvd___blu_ray._dvd_/_blu_rays_editeurs_id, _dvd_/_blu_rays_emission_tv_id: @_dvd___blu_ray._dvd_/_blu_rays_emission_tv_id, _dvd_/_blu_rays_format_id: @_dvd___blu_ray._dvd_/_blu_rays_format_id, _dvd_/_blu_rays_france_id: @_dvd___blu_ray._dvd_/_blu_rays_france_id, _dvd_/_blu_rays_groupes_id: @_dvd___blu_ray._dvd_/_blu_rays_groupes_id, _dvd_/_blu_rays_jv_id: @_dvd___blu_ray._dvd_/_blu_rays_jv_id, _dvd_/_blu_rays_litterature_asiatique_id: @_dvd___blu_ray._dvd_/_blu_rays_litterature_asiatique_id, _dvd_/_blu_rays_pays_id: @_dvd___blu_ray._dvd_/_blu_rays_pays_id, _dvd_/_blu_rays_people_id: @_dvd___blu_ray._dvd_/_blu_rays_people_id, _dvd_/_blu_rays_public_averti_id: @_dvd___blu_ray._dvd_/_blu_rays_public_averti_id, _dvd_/_blu_rays_type_edition_id: @_dvd___blu_ray._dvd_/_blu_rays_type_edition_id, acceptregles: @_dvd___blu_ray.acceptregles, audiodescription: @_dvd___blu_ray.audiodescription, comment: @_dvd___blu_ray.comment, date_parution_aaaa: @_dvd___blu_ray.date_parution_aaaa, date_parution_jj: @_dvd___blu_ray.date_parution_jj, date_parution_mm: @_dvd___blu_ray.date_parution_mm, duree: @_dvd___blu_ray.duree, ean: @_dvd___blu_ray.ean, episodes: @_dvd___blu_ray.episodes, image: @_dvd___blu_ray.image, infos: @_dvd___blu_ray.infos, nb_disque: @_dvd___blu_ray.nb_disque, prix: @_dvd___blu_ray.prix, ref: @_dvd___blu_ray.ref, resume: @_dvd___blu_ray.resume, statut_prop: @_dvd___blu_ray.statut_prop, titre: @_dvd___blu_ray.titre, titre_alternatif: @_dvd___blu_ray.titre_alternatif, titre_original: @_dvd___blu_ray.titre_original, type: @_dvd___blu_ray.type, youtube: @_dvd___blu_ray.youtube } }
    end

    assert_redirected_to _dvd___blu_ray_url(Dvd::BluRay.last)
  end

  test "should show _dvd___blu_ray" do
    get _dvd___blu_ray_url(@_dvd___blu_ray)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_ray_url(@_dvd___blu_ray)
    assert_response :success
  end

  test "should update _dvd___blu_ray" do
    patch _dvd___blu_ray_url(@_dvd___blu_ray), params: { _dvd___blu_ray: { _dvd_/_blu_rays_actualite_id: @_dvd___blu_ray._dvd_/_blu_rays_actualite_id, _dvd_/_blu_rays_actualite_mini_id: @_dvd___blu_ray._dvd_/_blu_rays_actualite_mini_id, _dvd_/_blu_rays_am_id: @_dvd___blu_ray._dvd_/_blu_rays_am_id, _dvd_/_blu_rays_anime_id: @_dvd___blu_ray._dvd_/_blu_rays_anime_id, _dvd_/_blu_rays_drama_id: @_dvd___blu_ray._dvd_/_blu_rays_drama_id, _dvd_/_blu_rays_editeurs_id: @_dvd___blu_ray._dvd_/_blu_rays_editeurs_id, _dvd_/_blu_rays_emission_tv_id: @_dvd___blu_ray._dvd_/_blu_rays_emission_tv_id, _dvd_/_blu_rays_format_id: @_dvd___blu_ray._dvd_/_blu_rays_format_id, _dvd_/_blu_rays_france_id: @_dvd___blu_ray._dvd_/_blu_rays_france_id, _dvd_/_blu_rays_groupes_id: @_dvd___blu_ray._dvd_/_blu_rays_groupes_id, _dvd_/_blu_rays_jv_id: @_dvd___blu_ray._dvd_/_blu_rays_jv_id, _dvd_/_blu_rays_litterature_asiatique_id: @_dvd___blu_ray._dvd_/_blu_rays_litterature_asiatique_id, _dvd_/_blu_rays_pays_id: @_dvd___blu_ray._dvd_/_blu_rays_pays_id, _dvd_/_blu_rays_people_id: @_dvd___blu_ray._dvd_/_blu_rays_people_id, _dvd_/_blu_rays_public_averti_id: @_dvd___blu_ray._dvd_/_blu_rays_public_averti_id, _dvd_/_blu_rays_type_edition_id: @_dvd___blu_ray._dvd_/_blu_rays_type_edition_id, acceptregles: @_dvd___blu_ray.acceptregles, audiodescription: @_dvd___blu_ray.audiodescription, comment: @_dvd___blu_ray.comment, date_parution_aaaa: @_dvd___blu_ray.date_parution_aaaa, date_parution_jj: @_dvd___blu_ray.date_parution_jj, date_parution_mm: @_dvd___blu_ray.date_parution_mm, duree: @_dvd___blu_ray.duree, ean: @_dvd___blu_ray.ean, episodes: @_dvd___blu_ray.episodes, image: @_dvd___blu_ray.image, infos: @_dvd___blu_ray.infos, nb_disque: @_dvd___blu_ray.nb_disque, prix: @_dvd___blu_ray.prix, ref: @_dvd___blu_ray.ref, resume: @_dvd___blu_ray.resume, statut_prop: @_dvd___blu_ray.statut_prop, titre: @_dvd___blu_ray.titre, titre_alternatif: @_dvd___blu_ray.titre_alternatif, titre_original: @_dvd___blu_ray.titre_original, type: @_dvd___blu_ray.type, youtube: @_dvd___blu_ray.youtube } }
    assert_redirected_to _dvd___blu_ray_url(@_dvd___blu_ray)
  end

  test "should destroy _dvd___blu_ray" do
    assert_difference("Dvd::BluRay.count", -1) do
      delete _dvd___blu_ray_url(@_dvd___blu_ray)
    end

    assert_redirected_to _dvd___blu_rays_url
  end
end
