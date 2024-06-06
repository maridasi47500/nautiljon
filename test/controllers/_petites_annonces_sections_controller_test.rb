require "test_helper"

class PetitesAnnoncesSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_petites_annonces_section = _petites_annonces_sections(:one)
  end

  test "should get index" do
    get _petites_annonces_sections_url
    assert_response :success
  end

  test "should get new" do
    get new__petites_annonces_section_url
    assert_response :success
  end

  test "should create _petites_annonces_section" do
    assert_difference("PetitesAnnoncesSection.count") do
      post _petites_annonces_sections_url, params: { _petites_annonces_section: { name: @_petites_annonces_section.name } }
    end

    assert_redirected_to _petites_annonces_section_url(PetitesAnnoncesSection.last)
  end

  test "should show _petites_annonces_section" do
    get _petites_annonces_section_url(@_petites_annonces_section)
    assert_response :success
  end

  test "should get edit" do
    get edit__petites_annonces_section_url(@_petites_annonces_section)
    assert_response :success
  end

  test "should update _petites_annonces_section" do
    patch _petites_annonces_section_url(@_petites_annonces_section), params: { _petites_annonces_section: { name: @_petites_annonces_section.name } }
    assert_redirected_to _petites_annonces_section_url(@_petites_annonces_section)
  end

  test "should destroy _petites_annonces_section" do
    assert_difference("PetitesAnnoncesSection.count", -1) do
      delete _petites_annonces_section_url(@_petites_annonces_section)
    end

    assert_redirected_to _petites_annonces_sections_url
  end
end
