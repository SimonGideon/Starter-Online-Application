require 'bcrypt'
class User < ApplicationRecord
    include BCrypt
    validates :username, presence: true
    validates :email, uniqueness: true , presence: true
    validates :password, presence: true, confirmation: true, on: :create

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