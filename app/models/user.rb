require 'bcrypt'
class User < ApplicationRecord
    include BCrypt
    validates :username, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, confirmation: true, on: :create
    validates :username, presence: true, uniqueness: true

    def self.authenticate(username, password)
        user = User.find_by(username: username)
        if user && user.password == password
            user
        else
            nil
            
        end
    end

    def password
        @password ||= Password.new(password_hash)
      end
    
      def password=(new_password)
        if new_password.present?
          @password = Password.create(new_password)
          self.password_hash = @password
        end
      end
end
