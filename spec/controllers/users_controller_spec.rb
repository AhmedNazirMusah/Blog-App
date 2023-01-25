require 'rails_helper'

RSpec.describe 'UsersController', type: :request do
  describe 'User controller' do
    it 'redirects to the user index' do
      get '/'
      expect(response).to render_template(:index)
    end

    it 'confirms status code ok for user index' do
      get '/'
      expect(response).to have_http_status(:ok)
    end

    it 'show the exact text on post index page' do
      get '/'
      expect(response.body).to include('List of all users')
    end

    it 'redirects to the user show page ' do
      get '/users/:id'
      expect(response).to render_template(:show)
    end

    it 'show the exact text on post show' do
      get '/users/:id'
      expect(response.body).to include('Show method for User')
    end

    it 'confirms status code ok for user show' do
      get '/users/:id'
      expect(response).to have_http_status(:ok)
    end

    it 'does not render a different template' do
      get '/'
      expect(response).to_not render_template(:show)
    end
  end
end
