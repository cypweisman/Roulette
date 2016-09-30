class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :email, :username, :password_hash, presence: true
  validates :email, :username, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(user_input_password)
    self.password == user_input_password
  end
end
