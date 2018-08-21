require "application_system_test_case"

class EmailAddressesTest < ApplicationSystemTestCase
  setup do
    @email_address = email_addresses(:one)
  end

  test "visiting the index" do
    visit email_addresses_url
    assert_selector "h1", text: "Email Addresses"
  end

  test "creating a Email address" do
    visit email_addresses_url
    click_on "New Email Address"

    fill_in "Email", with: @email_address.email
    fill_in "User Name", with: @email_address.user_name
    click_on "Create Email address"

    assert_text "Email address was successfully created"
    click_on "Back"
  end

  test "updating a Email address" do
    visit email_addresses_url
    click_on "Edit", match: :first

    fill_in "Email", with: @email_address.email
    fill_in "User Name", with: @email_address.user_name
    click_on "Update Email address"

    assert_text "Email address was successfully updated"
    click_on "Back"
  end

  test "destroying a Email address" do
    visit email_addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Email address was successfully destroyed"
  end
end
