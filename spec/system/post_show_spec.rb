require 'rails_helper'

RSpec.describe 'Post show page', type: :system do
  before do
    driven_by(:rack_test)
    @user = User.create(name: 'Lilly', post_counter: 0)
    @post = Post.create(title: 'First post', text: 'Another new post', author: @user, comments_counter: 0,
                        likes_counter: 0)
    @comment = Comment.create(author: @user, post: @post, text: 'another comment!')
  end

  it 'should show the post title' do
    visit user_post_path(@user.id, @post.id)
    expect(page).to have_text @post.title.to_s
  end

  it 'should show the author name' do
    visit user_post_path(@user.id, @post.id)
    expect(page).to have_text 'Lilly'
  end

  it 'should show the post comments number' do
    visit user_post_path(@user.id, @post.id)
    expect(page).to have_content "Comments: #{@post.comments_counter}"
  end

  it 'should show the post likes number' do
    visit user_post_path(@user.id, @post.id)
    expect(page).to have_content "Likes: #{@post.likes_counter}"
  end

  it 'should show the post body' do
    visit user_post_path(@user.id, @post.id)
    expect(page).to have_content @post.text.to_s
  end

  it 'should show comments authors names' do
    visit user_post_path(@user.id, @post.id)
    expect(find('div.post-comment')).to have_text @comment.author.name.to_s
  end

  it 'should show comments bodies' do
    visit user_post_path(@user.id, @post.id)
    expect(find('div.post-comment')).to have_text @comment.text.to_s
  end
end