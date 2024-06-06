require "application_system_test_case"

class Clips::Lives::Bonus::ConcertsTest < ApplicationSystemTestCase
  setup do
    @_clips___lives___bonus___concert = _clips___lives___bonus___concerts(:one)
  end

  test "visiting the index" do
    visit _clips___lives___bonus___concerts_url
    assert_selector "h1", text: "Concerts"
  end

  test "should create concert" do
    visit _clips___lives___bonus___concerts_url
    click_on "New concert"

    fill_in "Clips / lives / bonus / concerts clip", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_clip_id
    fill_in "Clips / lives / bonus / concerts emission tv numero", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_emission_tv_numero_id
    fill_in "Clips / lives / bonus / concerts people", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_people_id
    fill_in "Clips / lives / bonus / concerts role", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_role_id
    fill_in "Clips / lives / bonus / concerts type bonus", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_type_bonus_id
    fill_in "Clips / lives / bonus / concerts type", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_type_id
    fill_in "Acceptregles", with: @_clips___lives___bonus___concert.acceptregles
    fill_in "Comment", with: @_clips___lives___bonus___concert.comment
    fill_in "Date aaaa", with: @_clips___lives___bonus___concert.date_aaaa
    fill_in "Date jj", with: @_clips___lives___bonus___concert.date_jj
    fill_in "Date mm", with: @_clips___lives___bonus___concert.date_mm
    fill_in "Image", with: @_clips___lives___bonus___concert.image
    fill_in "Infos", with: @_clips___lives___bonus___concert.infos
    fill_in "Statut prop", with: @_clips___lives___bonus___concert.statut_prop
    fill_in "Titre", with: @_clips___lives___bonus___concert.titre
    fill_in "Titre original", with: @_clips___lives___bonus___concert.titre_original
    fill_in "Youtube", with: @_clips___lives___bonus___concert.youtube
    click_on "Create Concert"

    assert_text "Concert was successfully created"
    click_on "Back"
  end

  test "should update Concert" do
    visit _clips___lives___bonus___concert_url(@_clips___lives___bonus___concert)
    click_on "Edit this concert", match: :first

    fill_in "Clips / lives / bonus / concerts clip", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_clip_id
    fill_in "Clips / lives / bonus / concerts emission tv numero", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_emission_tv_numero_id
    fill_in "Clips / lives / bonus / concerts people", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_people_id
    fill_in "Clips / lives / bonus / concerts role", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_role_id
    fill_in "Clips / lives / bonus / concerts type bonus", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_type_bonus_id
    fill_in "Clips / lives / bonus / concerts type", with: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_type_id
    fill_in "Acceptregles", with: @_clips___lives___bonus___concert.acceptregles
    fill_in "Comment", with: @_clips___lives___bonus___concert.comment
    fill_in "Date aaaa", with: @_clips___lives___bonus___concert.date_aaaa
    fill_in "Date jj", with: @_clips___lives___bonus___concert.date_jj
    fill_in "Date mm", with: @_clips___lives___bonus___concert.date_mm
    fill_in "Image", with: @_clips___lives___bonus___concert.image
    fill_in "Infos", with: @_clips___lives___bonus___concert.infos
    fill_in "Statut prop", with: @_clips___lives___bonus___concert.statut_prop
    fill_in "Titre", with: @_clips___lives___bonus___concert.titre
    fill_in "Titre original", with: @_clips___lives___bonus___concert.titre_original
    fill_in "Youtube", with: @_clips___lives___bonus___concert.youtube
    click_on "Update Concert"

    assert_text "Concert was successfully updated"
    click_on "Back"
  end

  test "should destroy Concert" do
    visit _clips___lives___bonus___concert_url(@_clips___lives___bonus___concert)
    click_on "Destroy this concert", match: :first

    assert_text "Concert was successfully destroyed"
  end
end
