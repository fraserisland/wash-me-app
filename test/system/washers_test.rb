require "application_system_test_case"

class WashersTest < ApplicationSystemTestCase
  setup do
    @washer = washers(:one)
  end

  test "visiting the index" do
    visit washers_url
    assert_selector "h1", text: "Washers"
  end

  test "creating a Washer" do
    visit washers_url
    click_on "New Washer"

    fill_in "Address", with: @washer.address
    fill_in "Cost", with: @washer.cost
    fill_in "Latitude", with: @washer.latitude
    fill_in "Longitude", with: @washer.longitude
    fill_in "User", with: @washer.user_id
    click_on "Create Washer"

    assert_text "Washer was successfully created"
    click_on "Back"
  end

  test "updating a Washer" do
    visit washers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @washer.address
    fill_in "Cost", with: @washer.cost
    fill_in "Latitude", with: @washer.latitude
    fill_in "Longitude", with: @washer.longitude
    fill_in "User", with: @washer.user_id
    click_on "Update Washer"

    assert_text "Washer was successfully updated"
    click_on "Back"
  end

  test "destroying a Washer" do
    visit washers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Washer was successfully destroyed"
  end
end
