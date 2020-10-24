class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :training_participants
  has_one :user_role

  enum role: USER_ROLES


  def admin_user?
    self.user_role.role_type == USER_ROLES[0]
  end
end
