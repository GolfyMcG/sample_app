require 'spec_helper'

describe "Static pages" do
	describe "Home page" do
		it "should have the h1 'Sample App'" do
			visit '/static_page/home'
			page.should have_selector('h1', :text => 'Sample App')
		end

		it "should have the base title" do
			visit '/static_page/home'
			page.should have_selector('title',
				:text => "Ruby on Rails Tutorial Sample App")
		end
		
		it "should not have the custom page title 'Home'" do
		visit '/static_page/home'
			page.should_not have_selector('title',
				:text => "| Home")
		end
	end

	describe "Help page" do
		it "should have the h1 'Help'" do
			visit '/static_page/help'
			page.should have_selector('h1', :text => 'Help')
		end
		
		it "should have the base title" do
			visit '/static_page/help'
			page.should have_selector('title',
				:text => "Ruby on Rails Tutorial Sample App")
		end
		
		it "should not have the title 'Help'" do
			visit '/static_page/help'
			page.should_not have_selector('title',
				:text => "| Help")
		end
	end

	describe "About page" do
		it "should have the h1 'About Us'" do
			visit '/static_page/about'
			page.should have_selector('h1', :text => 'About Us')
		end
		
		it "should have the base title" do
			visit '/static_page/about'
			page.should have_selector('title',
				:text => "Ruby on Rails Tutorial Sample App")
		end

		it "should not have the title 'About Us'" do
			visit '/static_page/about'
			page.should_not have_selector('title',
				:text => "| About Us")
		end
	end

	describe "Contact page" do
		it "should have the h1 'Contact'" do
			visit '/static_page/contact'
			page.should have_selector('h1', :text => 'Contact')
		end
		
		it "should have the base title" do
			visit '/static_page/contact'
			page.should have_selector('title',
				:text => "Ruby on Rails Tutorial Sample App")
		end
		
		it "should not have the title 'Contact'" do
			visit '/static_page/contact'
			page.should_not have_selector('title',
				:text => "| Contact")
		end
	end
	  
end