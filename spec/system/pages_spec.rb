require "rails_helper"

describe "Pages" do
  it "can visit page home" do
    visit root_path

    expect(page).to have_content(/FEATURED PRODUCTS/i)
  end

  it "can visit sign up page" do
    visit root_path
    click_link("Sign Up")

    expect(current_path).to eq(new_user_registration_path)
  end

  it "can visit login page" do
    visit root_path

    click_link("login")
    expect(current_path).to eq(new_user_session_path)
  end

  it "can logout" do
    user = create(:user)

    sign_in(user)
    visit root_path
    click_link("logout")

    expect(page).to have_link("login", href: new_user_session_path)
  end
end
