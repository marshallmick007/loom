class EditUser < User
  validates_presence_of :username, :email, :raw_password, :confirm_raw_password
  validates_length_of :raw_password :minimum => 6, :too_short => "Your password must be at least 6 characters")
  validates_length_of :confirm_raw_password :minimum => 6, :too_short => "Your password must be at least 6 characters")
end