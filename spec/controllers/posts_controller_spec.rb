# require 'rails_helper'

# RSpec.describe 'PostsController', type: :request do
#   describe 'post controller' do
#     it 'redirects to the Post show page ' do
#       get '/users/1/posts/1'
#       expect(response).to include(@single_user)
#     end

#     it "redirects to the Post 'index' page" do
#       get '/users/1/posts'
#       expect(response).to render_template(:index)
#     end

#     it 'confirms status code ok for post show page' do
#       get '/users/1/posts/1'
#       expect(response).to have_http_status(:ok)
#     end

#     it 'does not render a different template' do
#       get '/users/1/posts/1'
#       expect(response).to_not render_template(:index, :@user)
#     end
#   end
# end
