
get '/' do
  # Look in app/views/index.erb

  @post = Post.all

  erb :index
end


