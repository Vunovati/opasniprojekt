require 'spec_helper'

describe "StaticPages" do

  subject {page}

  describe "Home page" do
    before {visit root_path}

    describe "it should have content 'Find a place to stay'" do

      it {should have_selector('h1', text: 'Find a place to stay')}
      it {should have_selector('title', text: 'Zimmer Frei')}
    end

    describe "it should contain proper links" do
      describe "it should have sign up link" do
        before {click_link 'Sign up'}

        it {should have_selector('h1', text: 'Sign up')}
      end

      describe "it should have sign in link" do
        before {click_link 'Sign in'}

        it {should have_selector('h1', text: 'Sign in')}
      end

      describe "signed user should be able to register a place" do
        let(:user){FactoryGirl.create(:user)}
        before {sign_in user}

        it {should have_link('Register your place', href: accomodations_path)}
      end
    end
  end
end
