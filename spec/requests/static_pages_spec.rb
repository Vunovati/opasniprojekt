require 'spec_helper'

describe "StaticPages" do

  subject {page}

  describe "Home page" do
    describe "ti should have content 'Find a place to stay'" do
      before {visit root_path}

      it {should have_selector('h1', text: 'Find a place to stay')}
      it {should have_selector('title', text: 'Zimmer Frei')}
    end

    describe "it should contain proper links" do
      describe "it should have sign up link" do
        before {visit root_path}
        before {click_link 'Sign up'}

        it {should have_selector('h1', text: 'Sign up')}
      end

      describe "it should have sign in link" do
        before {visit root_path}
        before {click_link 'Sign in'}

        it {should have_selector('h1', text: 'Sign in')}
      end
    end
  end
end
