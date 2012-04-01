# == Schema Information
#
# Table name: users
#
#  id             :integer         not null, primary key
#  name           :string(255)
#  surname        :string(255)
#  email          :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#  pasword_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :name, :surname, :email

  validates :name, presence: true, length: {maximum: 50} 
  validates :surname, presence: true, length: {maximum: 100}
  #VALID_EMAIL_REGEX = /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
end
