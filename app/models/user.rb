class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :training_participants,dependent: :destroy
  has_one :user_role, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  def admin_user?
    self.user_role.role_type.to_sym == USER_ROLES[0]
  end
end
