require 'spec_helper'
require 'addressable/uri'

@uri = Addressable::URI.parse("/static_page/home")

describe "Static pages" do
  describe "Home page" do
    it "should have content 'Sample App'" do
      visit 'http://localhost:3000/static_pages/home'
      page.should have_selector('h1', :text=>'Sample App')
    end

    it "should have the right title" do
      visit 'http://localhost:3000/static_pages/home'
      page.should have_selector('title', :text=>'Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe "Help page" do
    it "should have content 'Help'" do
      visit 'http://localhost:3000/static_pages/help'
      page.should have_selector('h1', :text=>'Help')
    end

    it "should have the right title" do
      visit 'http://localhost:3000/static_pages/help'
      page.should have_selector('title', :text=>'| Help')
    end
  end

  describe "About page" do
    it "About test" do
      visit 'http://localhost:3000/static_pages/about'
      page.should have_selector('h1', :text=>'About')
    end

    it "should have the right title" do
      visit 'http://localhost:3000/static_pages/about'
      page.should have_selector('title', :text=>'| About')
    end
  end

end
