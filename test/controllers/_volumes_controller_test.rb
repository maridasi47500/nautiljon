require "test_helper"

class VolumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_volume = _volumes(:one)
  end

  test "should get index" do
    get _volumes_url
    assert_response :success
  end

  test "should get new" do
    get new__volume_url
    assert_response :success
  end

  test "should create _volume" do
    assert_difference("Volume.count") do
      post _volumes_url, params: { _volume: { _volumes_illustrations_id: @_volume._volumes_illustrations_id, _volumes_ln_id: @_volume._volumes_ln_id, _volumes_type_id: @_volume._volumes_type_id, acceptregles: @_volume.acceptregles, chapitres: @_volume.chapitres, comment: @_volume.comment, date_parution_vf_aaaa: @_volume.date_parution_vf_aaaa, date_parution_vf_jj: @_volume.date_parution_vf_jj, date_parution_vf_mm: @_volume.date_parution_vf_mm, date_parution_vo_aaaa: @_volume.date_parution_vo_aaaa, date_parution_vo_jj: @_volume.date_parution_vo_jj, date_parution_vo_mm: @_volume.date_parution_vo_mm, ean: @_volume.ean, image: @_volume.image, image_nc: @_volume.image_nc, image_vo: @_volume.image_vo, image_vo2: @_volume.image_vo2, infos: @_volume.infos, numerique: @_volume.numerique, numero: @_volume.numero, pages: @_volume.pages, preview: @_volume.preview, prix: @_volume.prix, prix_vo: @_volume.prix_vo, relie: @_volume.relie, resume: @_volume.resume, sous_jaquette: @_volume.sous_jaquette, statut_prop: @_volume.statut_prop } }
    end

    assert_redirected_to _volume_url(Volume.last)
  end

  test "should show _volume" do
    get _volume_url(@_volume)
    assert_response :success
  end

  test "should get edit" do
    get edit__volume_url(@_volume)
    assert_response :success
  end

  test "should update _volume" do
    patch _volume_url(@_volume), params: { _volume: { _volumes_illustrations_id: @_volume._volumes_illustrations_id, _volumes_ln_id: @_volume._volumes_ln_id, _volumes_type_id: @_volume._volumes_type_id, acceptregles: @_volume.acceptregles, chapitres: @_volume.chapitres, comment: @_volume.comment, date_parution_vf_aaaa: @_volume.date_parution_vf_aaaa, date_parution_vf_jj: @_volume.date_parution_vf_jj, date_parution_vf_mm: @_volume.date_parution_vf_mm, date_parution_vo_aaaa: @_volume.date_parution_vo_aaaa, date_parution_vo_jj: @_volume.date_parution_vo_jj, date_parution_vo_mm: @_volume.date_parution_vo_mm, ean: @_volume.ean, image: @_volume.image, image_nc: @_volume.image_nc, image_vo: @_volume.image_vo, image_vo2: @_volume.image_vo2, infos: @_volume.infos, numerique: @_volume.numerique, numero: @_volume.numero, pages: @_volume.pages, preview: @_volume.preview, prix: @_volume.prix, prix_vo: @_volume.prix_vo, relie: @_volume.relie, resume: @_volume.resume, sous_jaquette: @_volume.sous_jaquette, statut_prop: @_volume.statut_prop } }
    assert_redirected_to _volume_url(@_volume)
  end

  test "should destroy _volume" do
    assert_difference("Volume.count", -1) do
      delete _volume_url(@_volume)
    end

    assert_redirected_to _volumes_url
  end
end
