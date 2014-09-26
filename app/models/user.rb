class User < ActiveRecord::Base
  enum role: [:user, :owner, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :confirmable, :invitable, :lockable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :timeoutable, :trackable, :validatable
end
