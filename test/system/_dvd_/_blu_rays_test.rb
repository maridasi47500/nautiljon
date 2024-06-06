require "application_system_test_case"

class Dvd::BluRaysTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_ray = _dvd___blu_rays(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_url
    assert_selector "h1", text: "Blu rays"
  end

  test "should create blu ray" do
    visit _dvd___blu_rays_url
    click_on "New blu ray"

    fill_in "Dvd / blu rays actualite", with: @_dvd___blu_ray._dvd_/_blu_rays_actualite_id
    fill_in "Dvd / blu rays actualite mini", with: @_dvd___blu_ray._dvd_/_blu_rays_actualite_mini_id
    fill_in "Dvd / blu rays am", with: @_dvd___blu_ray._dvd_/_blu_rays_am_id
    fill_in "Dvd / blu rays anime", with: @_dvd___blu_ray._dvd_/_blu_rays_anime_id
    fill_in "Dvd / blu rays drama", with: @_dvd___blu_ray._dvd_/_blu_rays_drama_id
    fill_in "Dvd / blu rays editeurs", with: @_dvd___blu_ray._dvd_/_blu_rays_editeurs_id
    fill_in "Dvd / blu rays emission tv", with: @_dvd___blu_ray._dvd_/_blu_rays_emission_tv_id
    fill_in "Dvd / blu rays format", with: @_dvd___blu_ray._dvd_/_blu_rays_format_id
    fill_in "Dvd / blu rays france", with: @_dvd___blu_ray._dvd_/_blu_rays_france_id
    fill_in "Dvd / blu rays groupes", with: @_dvd___blu_ray._dvd_/_blu_rays_groupes_id
    fill_in "Dvd / blu rays jv", with: @_dvd___blu_ray._dvd_/_blu_rays_jv_id
    fill_in "Dvd / blu rays litterature asiatique", with: @_dvd___blu_ray._dvd_/_blu_rays_litterature_asiatique_id
    fill_in "Dvd / blu rays pays", with: @_dvd___blu_ray._dvd_/_blu_rays_pays_id
    fill_in "Dvd / blu rays people", with: @_dvd___blu_ray._dvd_/_blu_rays_people_id
    fill_in "Dvd / blu rays public averti", with: @_dvd___blu_ray._dvd_/_blu_rays_public_averti_id
    fill_in "Dvd / blu rays type edition", with: @_dvd___blu_ray._dvd_/_blu_rays_type_edition_id
    fill_in "Acceptregles", with: @_dvd___blu_ray.acceptregles
    fill_in "Audiodescription", with: @_dvd___blu_ray.audiodescription
    fill_in "Comment", with: @_dvd___blu_ray.comment
    fill_in "Date parution aaaa", with: @_dvd___blu_ray.date_parution_aaaa
    fill_in "Date parution jj", with: @_dvd___blu_ray.date_parution_jj
    fill_in "Date parution mm", with: @_dvd___blu_ray.date_parution_mm
    fill_in "Duree", with: @_dvd___blu_ray.duree
    fill_in "Ean", with: @_dvd___blu_ray.ean
    fill_in "Episodes", with: @_dvd___blu_ray.episodes
    fill_in "Image", with: @_dvd___blu_ray.image
    fill_in "Infos", with: @_dvd___blu_ray.infos
    fill_in "Nb disque", with: @_dvd___blu_ray.nb_disque
    fill_in "Prix", with: @_dvd___blu_ray.prix
    fill_in "Ref", with: @_dvd___blu_ray.ref
    fill_in "Resume", with: @_dvd___blu_ray.resume
    fill_in "Statut prop", with: @_dvd___blu_ray.statut_prop
    fill_in "Titre", with: @_dvd___blu_ray.titre
    fill_in "Titre alternatif", with: @_dvd___blu_ray.titre_alternatif
    fill_in "Titre original", with: @_dvd___blu_ray.titre_original
    fill_in "Type", with: @_dvd___blu_ray.type
    fill_in "Youtube", with: @_dvd___blu_ray.youtube
    click_on "Create Blu ray"

    assert_text "Blu ray was successfully created"
    click_on "Back"
  end

  test "should update Blu ray" do
    visit _dvd___blu_ray_url(@_dvd___blu_ray)
    click_on "Edit this blu ray", match: :first

    fill_in "Dvd / blu rays actualite", with: @_dvd___blu_ray._dvd_/_blu_rays_actualite_id
    fill_in "Dvd / blu rays actualite mini", with: @_dvd___blu_ray._dvd_/_blu_rays_actualite_mini_id
    fill_in "Dvd / blu rays am", with: @_dvd___blu_ray._dvd_/_blu_rays_am_id
    fill_in "Dvd / blu rays anime", with: @_dvd___blu_ray._dvd_/_blu_rays_anime_id
    fill_in "Dvd / blu rays drama", with: @_dvd___blu_ray._dvd_/_blu_rays_drama_id
    fill_in "Dvd / blu rays editeurs", with: @_dvd___blu_ray._dvd_/_blu_rays_editeurs_id
    fill_in "Dvd / blu rays emission tv", with: @_dvd___blu_ray._dvd_/_blu_rays_emission_tv_id
    fill_in "Dvd / blu rays format", with: @_dvd___blu_ray._dvd_/_blu_rays_format_id
    fill_in "Dvd / blu rays france", with: @_dvd___blu_ray._dvd_/_blu_rays_france_id
    fill_in "Dvd / blu rays groupes", with: @_dvd___blu_ray._dvd_/_blu_rays_groupes_id
    fill_in "Dvd / blu rays jv", with: @_dvd___blu_ray._dvd_/_blu_rays_jv_id
    fill_in "Dvd / blu rays litterature asiatique", with: @_dvd___blu_ray._dvd_/_blu_rays_litterature_asiatique_id
    fill_in "Dvd / blu rays pays", with: @_dvd___blu_ray._dvd_/_blu_rays_pays_id
    fill_in "Dvd / blu rays people", with: @_dvd___blu_ray._dvd_/_blu_rays_people_id
    fill_in "Dvd / blu rays public averti", with: @_dvd___blu_ray._dvd_/_blu_rays_public_averti_id
    fill_in "Dvd / blu rays type edition", with: @_dvd___blu_ray._dvd_/_blu_rays_type_edition_id
    fill_in "Acceptregles", with: @_dvd___blu_ray.acceptregles
    fill_in "Audiodescription", with: @_dvd___blu_ray.audiodescription
    fill_in "Comment", with: @_dvd___blu_ray.comment
    fill_in "Date parution aaaa", with: @_dvd___blu_ray.date_parution_aaaa
    fill_in "Date parution jj", with: @_dvd___blu_ray.date_parution_jj
    fill_in "Date parution mm", with: @_dvd___blu_ray.date_parution_mm
    fill_in "Duree", with: @_dvd___blu_ray.duree
    fill_in "Ean", with: @_dvd___blu_ray.ean
    fill_in "Episodes", with: @_dvd___blu_ray.episodes
    fill_in "Image", with: @_dvd___blu_ray.image
    fill_in "Infos", with: @_dvd___blu_ray.infos
    fill_in "Nb disque", with: @_dvd___blu_ray.nb_disque
    fill_in "Prix", with: @_dvd___blu_ray.prix
    fill_in "Ref", with: @_dvd___blu_ray.ref
    fill_in "Resume", with: @_dvd___blu_ray.resume
    fill_in "Statut prop", with: @_dvd___blu_ray.statut_prop
    fill_in "Titre", with: @_dvd___blu_ray.titre
    fill_in "Titre alternatif", with: @_dvd___blu_ray.titre_alternatif
    fill_in "Titre original", with: @_dvd___blu_ray.titre_original
    fill_in "Type", with: @_dvd___blu_ray.type
    fill_in "Youtube", with: @_dvd___blu_ray.youtube
    click_on "Update Blu ray"

    assert_text "Blu ray was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu ray" do
    visit _dvd___blu_ray_url(@_dvd___blu_ray)
    click_on "Destroy this blu ray", match: :first

    assert_text "Blu ray was successfully destroyed"
  end
end
