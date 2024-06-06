require "application_system_test_case"

class VolumesTest < ApplicationSystemTestCase
  setup do
    @_volume = _volumes(:one)
  end

  test "visiting the index" do
    visit _volumes_url
    assert_selector "h1", text: "Volumes"
  end

  test "should create volume" do
    visit _volumes_url
    click_on "New volume"

    fill_in "Volumes illustrations", with: @_volume._volumes_illustrations_id
    fill_in "Volumes ln", with: @_volume._volumes_ln_id
    fill_in "Volumes type", with: @_volume._volumes_type_id
    fill_in "Acceptregles", with: @_volume.acceptregles
    fill_in "Chapitres", with: @_volume.chapitres
    fill_in "Comment", with: @_volume.comment
    fill_in "Date parution vf aaaa", with: @_volume.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @_volume.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @_volume.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @_volume.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @_volume.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @_volume.date_parution_vo_mm
    fill_in "Ean", with: @_volume.ean
    fill_in "Image", with: @_volume.image
    fill_in "Image nc", with: @_volume.image_nc
    fill_in "Image vo", with: @_volume.image_vo
    fill_in "Image vo2", with: @_volume.image_vo2
    fill_in "Infos", with: @_volume.infos
    fill_in "Numerique", with: @_volume.numerique
    fill_in "Numero", with: @_volume.numero
    fill_in "Pages", with: @_volume.pages
    fill_in "Preview", with: @_volume.preview
    fill_in "Prix", with: @_volume.prix
    fill_in "Prix vo", with: @_volume.prix_vo
    fill_in "Relie", with: @_volume.relie
    fill_in "Resume", with: @_volume.resume
    fill_in "Sous jaquette", with: @_volume.sous_jaquette
    fill_in "Statut prop", with: @_volume.statut_prop
    click_on "Create Volume"

    assert_text "Volume was successfully created"
    click_on "Back"
  end

  test "should update Volume" do
    visit _volume_url(@_volume)
    click_on "Edit this volume", match: :first

    fill_in "Volumes illustrations", with: @_volume._volumes_illustrations_id
    fill_in "Volumes ln", with: @_volume._volumes_ln_id
    fill_in "Volumes type", with: @_volume._volumes_type_id
    fill_in "Acceptregles", with: @_volume.acceptregles
    fill_in "Chapitres", with: @_volume.chapitres
    fill_in "Comment", with: @_volume.comment
    fill_in "Date parution vf aaaa", with: @_volume.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @_volume.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @_volume.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @_volume.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @_volume.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @_volume.date_parution_vo_mm
    fill_in "Ean", with: @_volume.ean
    fill_in "Image", with: @_volume.image
    fill_in "Image nc", with: @_volume.image_nc
    fill_in "Image vo", with: @_volume.image_vo
    fill_in "Image vo2", with: @_volume.image_vo2
    fill_in "Infos", with: @_volume.infos
    fill_in "Numerique", with: @_volume.numerique
    fill_in "Numero", with: @_volume.numero
    fill_in "Pages", with: @_volume.pages
    fill_in "Preview", with: @_volume.preview
    fill_in "Prix", with: @_volume.prix
    fill_in "Prix vo", with: @_volume.prix_vo
    fill_in "Relie", with: @_volume.relie
    fill_in "Resume", with: @_volume.resume
    fill_in "Sous jaquette", with: @_volume.sous_jaquette
    fill_in "Statut prop", with: @_volume.statut_prop
    click_on "Update Volume"

    assert_text "Volume was successfully updated"
    click_on "Back"
  end

  test "should destroy Volume" do
    visit _volume_url(@_volume)
    click_on "Destroy this volume", match: :first

    assert_text "Volume was successfully destroyed"
  end
end
