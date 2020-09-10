require "application_system_test_case"

class CardpagesTest < ApplicationSystemTestCase
  setup do
    @cardpage = cardpages(:one)
  end

  test "visiting the index" do
    visit cardpages_url
    assert_selector "h1", text: "Cardpages"
  end

  test "creating a Cardpage" do
    visit cardpages_url
    click_on "New Cardpage"

    fill_in "Body", with: @cardpage.body
    fill_in "H1", with: @cardpage.h1
    fill_in "Title", with: @cardpage.title
    click_on "Create Cardpage"

    assert_text "Cardpage was successfully created"
    click_on "Back"
  end

  test "updating a Cardpage" do
    visit cardpages_url
    click_on "Edit", match: :first

    fill_in "Body", with: @cardpage.body
    fill_in "H1", with: @cardpage.h1
    fill_in "Title", with: @cardpage.title
    click_on "Update Cardpage"

    assert_text "Cardpage was successfully updated"
    click_on "Back"
  end

  test "destroying a Cardpage" do
    visit cardpages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cardpage was successfully destroyed"
  end
end
