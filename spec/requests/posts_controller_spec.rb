require 'rails_helper'

RSpec.describe 'PostsController', type: :request do
  describe 'GET /index' do
    context 'when the page is loaded' do
      it 'returns a 200 status code, render template for index, and check if pagination is included' do
        get '/users/1/posts'
        expect(response).to have_http_status(200)
        expect(response).to render_template(:index)
        expect(response.body).to include('Pagination')
      end
    end
  end
end
