require "test_helper"

class EvenementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenement = evenements(:one)
  end

  test "should get index" do
    get evenements_url
    assert_response :success
  end

  test "should get new" do
    get new_evenement_url
    assert_response :success
  end

  test "should create evenement" do
    assert_difference("Evenement.count") do
      post evenements_url, params: { evenement: { acceptregles: @evenement.acceptregles, adresse: @evenement.adresse, date: @evenement.date, date_fin: @evenement.date_fin, description: @evenement.description, evenements_pays_id: @evenement.evenements_pays_id, evenements_people_id: @evenement.evenements_people_id, heure: @evenement.heure, lien: @evenement.lien, lieu: @evenement.lieu, prix: @evenement.prix, site: @evenement.site, titre: @evenement.titre, ville: @evenement.ville } }
    end

    assert_redirected_to evenement_url(Evenement.last)
  end

  test "should show evenement" do
    get evenement_url(@evenement)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenement_url(@evenement)
    assert_response :success
  end

  test "should update evenement" do
    patch evenement_url(@evenement), params: { evenement: { acceptregles: @evenement.acceptregles, adresse: @evenement.adresse, date: @evenement.date, date_fin: @evenement.date_fin, description: @evenement.description, evenements_pays_id: @evenement.evenements_pays_id, evenements_people_id: @evenement.evenements_people_id, heure: @evenement.heure, lien: @evenement.lien, lieu: @evenement.lieu, prix: @evenement.prix, site: @evenement.site, titre: @evenement.titre, ville: @evenement.ville } }
    assert_redirected_to evenement_url(@evenement)
  end

  test "should destroy evenement" do
    assert_difference("Evenement.count", -1) do
      delete evenement_url(@evenement)
    end

    assert_redirected_to evenements_url
  end
end
