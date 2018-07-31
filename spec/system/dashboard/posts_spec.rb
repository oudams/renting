require "rails_helper"

describe "Posts" do
  context "for normal user" do
    it "can list posts" do
      user = create(:user)
      post = create(:post)

      sign_in(user)
      visit dashboard_posts_path

      expect(page).to have_content(post.title)
      expect(page).to have_no_link("Edit", href: edit_dashboard_post_path(post))
      expect(page).to have_no_link("New Post", href: new_dashboard_post_path)
    end
  end

  context "for admin" do
    it "can list posts" do
      user = create(:user, :admin)
      post = create(:post)

      sign_in(user)
      visit dashboard_posts_path

      expect(page).to have_content(post.title)
      expect(page).to have_link("Edit", href: edit_dashboard_post_path(post))
      expect(page).to have_link("New Post", href: new_dashboard_post_path)
    end
  end
end
