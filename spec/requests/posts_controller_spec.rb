require 'rails_helper'

RSpec.describe 'PostsController', type: :request do
  describe 'GET /index' do
    context 'when the page is loaded' do
      it 'returns a 200 status code and render template for index' do
        get '/users/1/posts'
        expect(response).to have_http_status(200)
        expect(response).to render_template(:index)
      end
      it 'includes pagination' do
        get '/users/1/posts'
        expect(response.body).to include('Pagination')
      end
    end
  end

  describe 'GET /show' do
    context 'when the page is loaded' do
      it 'returns a 200 status code and render template for show' do
        get '/users/1/posts', params: { id: 1 }
        expect(response).to have_http_status(200)
        expect(response).to render_template(:index)
      end
      it 'returns a 200 status code and render template for show' do
        get '/users/1/posts', params: { id: 1 }
        expect(response.body).to include('post')
      end
    end
  end
end
