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
        expect {click_button "Create User"}.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "user_name", with: "Example"
        fill_in "user_surname", with: "User"
        fill_in "user_email", with: "user@example.com"
        fill_in "user_password", with: "foobar"
        fill_in "user_password_confirmation", with: "foobar"
      end

      it "should create a user" do
        expect do
          click_button "Create User"
        end.to change(User, :count).by(1)
      end

      #describe "after saving the user" do
      #  it {should have_link('Sign out')}
      #end
    end
  end

  describe "edit" do
    let(:user){FactoryGirl.create(:user)}
    before do
      sign_in user
      visit edit_user_path(user)
    end

    describe "page" do
      it {should have_selector('h1', text: "Update your profile")}
      it {should have_selector('title', text: "Edit user")}
      it {should have_link('change', href: "http://gravatar.com/emails")}
    end

    describe "with invalid information" do
      before {click_button "Save changes"}

      #it {should have_content('error')}
    end

    describe "with valid information" do
      let(:new_name) {"New_Name"}
      let(:new_surname) {"New_Surname"}
      let(:new_email) {"new@example.com"}
      before do
        fill_in "user_name", with: new_name
        fill_in "Surname", with: new_surname
        fill_in "Email", with: new_email
        fill_in "Password", with: user.password
        fill_in "Confirm password", with: user.password
        click_button "Save changes"
      end

      it {should have_selector('title', text: new_name+" "+new_surname)}
      #it {should have_selector('div.alert.alert-success')}
      #it {should have_link('Sign out', :href => signout_path)}
      specify {user.reload.name.should == new_name}
      specify {user.reload.surname.should == new_surname}
      specify {user.reload.email.should == new_email}
    end
  end
end
