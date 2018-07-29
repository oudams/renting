require "rails_helper"

describe "Pages" do
  it "can visit page home" do
    visit root_path
    expect(page).to have_content("Welcome to Renting")
  end

  it "can visit sign up page" do
    visit root_path
    click_link("Sign up")

    expect(current_path).to eq(new_user_registration_path)
  end

  it "can visit login page" do
    visit root_path

    click_link("Login")
    expect(current_path).to eq(new_user_session_path)
  end

  it "can logout" do
    user = create(:user)

    sign_in(user)
    visit root_path
    click_link("Sign out")

    expect(page).to have_link("Login", href: new_user_session_path)
  end
end
