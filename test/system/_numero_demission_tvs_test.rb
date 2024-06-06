require "application_system_test_case"

class NumeroDemissionTvsTest < ApplicationSystemTestCase
  setup do
    @_numero_demission_tv = _numero_demission_tvs(:one)
  end

  test "visiting the index" do
    visit _numero_demission_tvs_url
    assert_selector "h1", text: "Numero demission tvs"
  end

  test "should create numero demission tv" do
    visit _numero_demission_tvs_url
    click_on "New numero demission tv"

    fill_in "Numero demission tvs clip", with: @_numero_demission_tv._numero_demission_tvs_clip_id
    fill_in "Numero demission tvs emission tv numero", with: @_numero_demission_tv._numero_demission_tvs_emission_tv_numero_id
    fill_in "Numero demission tvs id emission tv", with: @_numero_demission_tv._numero_demission_tvs_id_emission_tv_id
    fill_in "Numero demission tvs people", with: @_numero_demission_tv._numero_demission_tvs_people_id
    fill_in "Numero demission tvs presentateur", with: @_numero_demission_tv._numero_demission_tvs_presentateur_id
    fill_in "Numero demission tvs special", with: @_numero_demission_tv._numero_demission_tvs_special_id
    fill_in "Acceptregles", with: @_numero_demission_tv.acceptregles
    fill_in "Comment", with: @_numero_demission_tv.comment
    fill_in "Date aaaa", with: @_numero_demission_tv.date_aaaa
    fill_in "Date jj", with: @_numero_demission_tv.date_jj
    fill_in "Date mm", with: @_numero_demission_tv.date_mm
    fill_in "Duree", with: @_numero_demission_tv.duree
    fill_in "Image", with: @_numero_demission_tv.image
    fill_in "Infos", with: @_numero_demission_tv.infos
    fill_in "Statut prop", with: @_numero_demission_tv.statut_prop
    fill_in "Titre", with: @_numero_demission_tv.titre
    fill_in "Titre original", with: @_numero_demission_tv.titre_original
    fill_in "Youtube", with: @_numero_demission_tv.youtube
    click_on "Create Numero demission tv"

    assert_text "Numero demission tv was successfully created"
    click_on "Back"
  end

  test "should update Numero demission tv" do
    visit _numero_demission_tv_url(@_numero_demission_tv)
    click_on "Edit this numero demission tv", match: :first

    fill_in "Numero demission tvs clip", with: @_numero_demission_tv._numero_demission_tvs_clip_id
    fill_in "Numero demission tvs emission tv numero", with: @_numero_demission_tv._numero_demission_tvs_emission_tv_numero_id
    fill_in "Numero demission tvs id emission tv", with: @_numero_demission_tv._numero_demission_tvs_id_emission_tv_id
    fill_in "Numero demission tvs people", with: @_numero_demission_tv._numero_demission_tvs_people_id
    fill_in "Numero demission tvs presentateur", with: @_numero_demission_tv._numero_demission_tvs_presentateur_id
    fill_in "Numero demission tvs special", with: @_numero_demission_tv._numero_demission_tvs_special_id
    fill_in "Acceptregles", with: @_numero_demission_tv.acceptregles
    fill_in "Comment", with: @_numero_demission_tv.comment
    fill_in "Date aaaa", with: @_numero_demission_tv.date_aaaa
    fill_in "Date jj", with: @_numero_demission_tv.date_jj
    fill_in "Date mm", with: @_numero_demission_tv.date_mm
    fill_in "Duree", with: @_numero_demission_tv.duree
    fill_in "Image", with: @_numero_demission_tv.image
    fill_in "Infos", with: @_numero_demission_tv.infos
    fill_in "Statut prop", with: @_numero_demission_tv.statut_prop
    fill_in "Titre", with: @_numero_demission_tv.titre
    fill_in "Titre original", with: @_numero_demission_tv.titre_original
    fill_in "Youtube", with: @_numero_demission_tv.youtube
    click_on "Update Numero demission tv"

    assert_text "Numero demission tv was successfully updated"
    click_on "Back"
  end

  test "should destroy Numero demission tv" do
    visit _numero_demission_tv_url(@_numero_demission_tv)
    click_on "Destroy this numero demission tv", match: :first

    assert_text "Numero demission tv was successfully destroyed"
  end
end
