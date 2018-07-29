require "rails_helper"

describe "Pages" do
  it "can visit page home" do
    visit root_path
    expect(page).to have_content("Welcome to Renting")
  end
end
