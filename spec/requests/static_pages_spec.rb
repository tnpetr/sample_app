require 'spec_helper'
#require 'addressable/uri'



describe "Static pages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
    it "should have content 'Sample App'" do
      visit 'http://localhost:3000/static_pages/home'
      page.should have_selector('h1', :text=>'Sample App')
    end

    it "should have the base title" do
      visit 'http://localhost:3000/static_pages/home'
      page.should have_selector('title', :text=>"#{base_title}")
    end

    it "should not have a custom page title" do
      visit 'http://localhost:3000/static_pages/home'
      page.should_not have_selector('title', :text=>'| Home')
    end
  end

  describe "Help page" do
    it "should have content 'Help'" do
      visit 'http://localhost:3000/static_pages/help'
      page.should have_selector('h1', :text=>'Help')
    end

    it "should have the right title" do
      visit 'http://localhost:3000/static_pages/help'
      page.should have_selector('title', :text=>"#{base_title} | Help")
    end
  end

  describe "About page" do
    it "About test" do
      visit 'http://localhost:3000/static_pages/about'
      page.should have_selector('h1', :text=>'About')
    end

    it "should have the right title" do
      visit 'http://localhost:3000/static_pages/about'
      page.should have_selector('title', :text=>"#{base_title} | About")
    end
  end

  describe "Contact page" do
    it "Contact test" do
      visit 'http://localhost:3000/static_pages/contact'
      page.should have_selector('h1', :text=>'Contact')
    end

    it "should have the righn title" do
      visit 'http://localhost:3000/static_pages/contact'
      page.should have_selector('title', :text=>"#{base_title} | Contact")
    end
  end
end
