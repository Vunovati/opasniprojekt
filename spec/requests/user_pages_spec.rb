require 'spec_helper'

describe "UserPages" do

  subject {page}

  #describe "profile page" do
  #  let(:user){FactoryGirl.create(:user)}
  #  before {visit user_path(user)}

  #  it {should have_selector('h1', text: @user.name)}
  #  it {should have_selector('title', text: @user.name)}
  #end

  #describe "signup page" do
    #before {visit signup_path}

    #it {should have_selector('h1', text: 'Prijava')}
    #it {should have_selector('title', text: full_title('Sign up'))}
  #end

  describe "signup" do
    before {visit signup_path}

    describe "with invalid information" do
      it "should not create a user" do
        expect {click_button "Otvori korisnicki racun"}.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Ime", with: "Example"
        fill_in "Prezime", with: "User"
        fill_in "Email", with: "user@example.com"
        fill_in "Lozinka", with: "foobar"
        fill_in "Potvrda lozinke", with: "foobar"
      end

      it "should create a user" do
        expect do
          click_button "Otvori korisnicki racun"
        end.to change(User, :count).by(1)
      end
    end
  end
end
