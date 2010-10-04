class User < ActiveRecord::Base
  attr_accessor :raw_password, :confirm_raw_password
  
  validates_presence_of :username, :email
  validates_presence_of :raw_password, :confirm_raw_password, :on => :create
  validate :raw_passwords_match, :on => :create
  validates_length_of :raw_password, :minimum => 6, :too_short => "Your password must be at least 6 characters", :on => :create


  def raw_passwords_match
    errors.add_to_base("Your password attempts do not match") unless self.raw_password == self.confirm_raw_password
  end
  
  def before_create
    hash = Password::update(self.raw_password)
    self.password_hash = hash
  end
  
  def self.find_by_name(username)
    first(:conditions => ["username = ?", username])
  end
end
