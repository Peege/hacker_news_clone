get '/comments/:id' do

  @post = Post.find(params[:id])


  erb :comment
end


