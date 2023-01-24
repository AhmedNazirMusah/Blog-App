require "rails_helper"

RSpec.describe "PostsController", :type => :request do
   describe 'post controller' do
    it "redirects to the Post show page " do
        get "/users/:user_id/posts/:id"
        expect(response).to render_template(:show)
    end

    it "redirects to the Post 'index' page" do
        get "/users/:user_id/posts"
        expect(response).to render_template(:index)
    end

    it 'confirms status code ok for post show page' do
        get "/users/:user_id/posts/:id"
        expect(response).to have_http_status(:ok)
      end

    it "show the exact text on post index page" do
        get "/users/:user_id/posts/:id"
        expect(response.body).to include("Show method for posts")
    end

    it "does not render a different template" do
        get "/users/:user_id/posts/:id"
        expect(response).to_not render_template(:index)
    end
  end
end
