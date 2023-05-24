class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
         :confirmable, :lockable, :timeoutable, :omniauthable, :confirmable, :lockable,
         :timeoutable, :omniauthable, authentication_keys: [:email, :username]

  def self.find_for_database_authentication(warden_conditions)
    condition = warden_conditions[:email].try(:downcase)
    where(condition).or(User.where(username: condition)).first
  end
end
