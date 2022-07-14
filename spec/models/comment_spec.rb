require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:all) do
    @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')

    @post = Post.new(title: 'Post Title', text: 'Post text', likes_counter: 0, comments_counter: 0, author: @user)
  end

  it 'should return comments_counter incremented by 1' do
    @post.save
    @comment = Comment.new(text: 'Comment text', author: @user, post: @post)
    @comment.save
    expect(@post.comments_counter).to eq(1)
  end
end
