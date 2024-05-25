class FetchController < ApplicationController
    before_action :require_login, only: [:index]
    def index
        fetch_data
    end
    def fetch_data
        begin
        response = RestClient.get('https://cat-fact.herokuapp.com/facts/')
        @data = JSON.parse(response.body)
        render 'index'
        rescue SocketError, RestClient::ExceptionWithResponse => e
        # raise error 500
        render_500
        end
    end
end
