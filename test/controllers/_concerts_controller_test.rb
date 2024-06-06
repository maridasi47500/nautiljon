require "test_helper"

class ConcertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_concert = _concerts(:one)
  end

  test "should get index" do
    get _concerts_url
    assert_response :success
  end

  test "should get new" do
    get new__concert_url
    assert_response :success
  end

  test "should create _concert" do
    assert_difference("Concert.count") do
      post _concerts_url, params: { _concert: { _concerts_artiste_id: @_concert._concerts_artiste_id, _concerts_pays_id: @_concert._concerts_pays_id, acceptregles: @_concert.acceptregles, adresse: @_concert.adresse, date: @_concert.date, endroit: @_concert.endroit, heure: @_concert.heure, infos: @_concert.infos, lien: @_concert.lien, nom: @_concert.nom, prix: @_concert.prix, ville: @_concert.ville } }
    end

    assert_redirected_to _concert_url(Concert.last)
  end

  test "should show _concert" do
    get _concert_url(@_concert)
    assert_response :success
  end

  test "should get edit" do
    get edit__concert_url(@_concert)
    assert_response :success
  end

  test "should update _concert" do
    patch _concert_url(@_concert), params: { _concert: { _concerts_artiste_id: @_concert._concerts_artiste_id, _concerts_pays_id: @_concert._concerts_pays_id, acceptregles: @_concert.acceptregles, adresse: @_concert.adresse, date: @_concert.date, endroit: @_concert.endroit, heure: @_concert.heure, infos: @_concert.infos, lien: @_concert.lien, nom: @_concert.nom, prix: @_concert.prix, ville: @_concert.ville } }
    assert_redirected_to _concert_url(@_concert)
  end

  test "should destroy _concert" do
    assert_difference("Concert.count", -1) do
      delete _concert_url(@_concert)
    end

    assert_redirected_to _concerts_url
  end
end
