class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  Roles = ["User", "Customer Service"]

  validates_presence_of :name, :email, :password, :password_confirmation, :role
  validates_inclusion_of :role, in: Roles
end
