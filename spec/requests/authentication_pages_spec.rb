require 'spec_helper'

describe "Authentication" do
  subject {page}

  describe "signin page" do
    before {visit signin_path}

    it {should have_selector('h1', text: "Prijava")}
    #it {should have_selector('title', text: "Prijava")}
  end

  describe "signin" do
    before {visit signin_path}

    describe "with invalid information" do
      before {click_button "Prijava"}

      #it {should have_selector('title', text: "Prijava")}
      #it {should have_selector('div.alert.alert-error', text: "Invalid")}

      #describe "after visiting another page" do
      #  before {click_link "Home"}
      #  it {should_not have_selector('div.alert.alert-error')}
      #end
    end

    describe "with valid information" do
      let(:user) {FactoryGirl.create(:user)}
      before do
        fill_in "Email", with: user.email
        fill_in "Lozinka", with: user.password
        click_button "Prijava"
      end

      it {should have_selector('title', text: user.name+" "+user.surname)}
      #it {should have_link('Profil', href: user_path(user))}
      #it {should have_link('Odjava', href: signout_path)}
      it {should_not have_link('Prijava', href: signin_path)}
    end 
  end
end
