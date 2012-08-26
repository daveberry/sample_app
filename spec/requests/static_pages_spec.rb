require 'spec_helper'



describe "Static Pages" do
  
let(:base_t) {"Ruby on Rails Tutorial Sample App"}

  describe "Home Page" do
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_t}")
    end
	
		it "should not have a custom page title" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => "| Home")
		end

  it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Sample App")
    end
  end

  describe "Help Page" do
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_t} | Help")
    end

  it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => "Help")
    end
  end

describe "About" do
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_t} | About Us")
    end

  it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About Us")
    end
  end

describe "Contact" do
	it "should have the right title" do
		visit '/static_pages/contact'
		page.should have_selector('title', :text => "#{base_t} | Contact")
	end

	it "should have the content 'Contact'" do
		visit '/static_pages/contact'
		page.should have_selector('h1', :text => "Contact")
	end
end


end
