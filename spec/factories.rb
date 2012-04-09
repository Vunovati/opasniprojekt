# config/environments/test.rb smanjen BCryptov cost factor

FactoryGirl.define do
  factory :user do
    name "Vedran"
    surname "Ilic-Dreven"
    email "vidreven@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
