class User < ActiveRecord::Base
  enum role: [:user, :owner, :admin, :agent]
  after_initialize :set_default_role, :if => :new_record?
  validates_presence_of :first_name, :last_name

  def full_name
    [first_name, last_name].join " "
  end

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :confirmable, :invitable, :lockable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :timeoutable, :trackable, :validatable
end
