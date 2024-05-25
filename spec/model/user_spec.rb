require 'rails_helper'


RSpec.describe User, type: :model do
    it 'is valid with valid attributes' do
        user = User.new(username: 'test', email: 'test@gmail.com' ,password: 'password', password_confirmation: 'password')
        expect(user).to be_valid
    end
    it 'is not valid without a username' do
        user = User.new(username: nil, email: 'test@gmail.com' ,password: 'password', password_confirmation: 'password')
        expect(user).to_not be_valid
    end
    # test existing username and email
    it 'is not valid with an existing username' do
        User.create(username: 'test', email: 'test@gmail.com' ,password: 'password', password_confirmation: 'password')
        user = User.new(username: 'test', email: 'test@gmail.com' ,password: 'password', password_confirmation: 'password')
        expect(user).to_not be_valid
    end
end
