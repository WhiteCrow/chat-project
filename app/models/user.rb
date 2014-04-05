class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Constants
  Roles = ["User", "Customer Service"]

  ## Validations
  validates_presence_of :name, :email, :password, :password_confirmation, :role
  validates_uniqueness_of :name, :email
  validates_inclusion_of :role, in: Roles

  ##Methods
  def messages_with(user)
    Message.where("sender_id = #{self.id} OR sender_id = #{user.id}").
            order(:created_at) || []
  end
end
