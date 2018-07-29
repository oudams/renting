require "rails_helper"

describe "Authentications" do
  it "can sign up" do
    email = "serey@bongloy.com"
    password = "12345678"

    visit new_user_registration_path

    fill_in("Email", with: email)
    fill_in("Password", with: password, match: :prefer_exact)
    fill_in("Password confirmation", with: password, match: :prefer_exact)
    click_button("Sign up")

    expect(page).to have_flash("Welcome! You have signed up successfully.")

  end

  it "can sign in" do
    user = create(:user)

		visit new_user_session_path
    fill_in("Email", with: user.email)
    fill_in("Password", with: user.password, match: :prefer_exact)
    click_button("Log in")

    expect(page).to have_flash("Signed in successfully.")
  end
end
