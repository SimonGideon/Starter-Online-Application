require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    describe 'POST #create' do
    context 'with invalid parameters' do
      let(:invalid_user_params) do
        {
          user: {
            username: nil,
            email: 'test@gmail.com',
            password: 'password',
            password_confirmation: 'password'
          }
        }
      end

      it 'returns HTTP unprocessable_entity' do
        post :create, params: invalid_user_params
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'does not create a new user' do
        expect {
          post :create, params: invalid_user_params
        }.not_to change(User, :count)
      end
    end
    end
    describe 'GET #new' do
        it 'returns http success' do
            get :new
            expect(response).to have_http_status(:success)
        end
    end
    describe 'POST #create' do
        it 'returns http success' do
            post :create, params: { user: { username: 'test', email: 'test@gmail.com', password: 'password', password_confirmation: 'password' } }
            expect(response).to have_http_status(:found)
        end
    end
    
end