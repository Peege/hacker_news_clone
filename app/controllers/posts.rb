get '/posts/:id' do

  @user = User.find(params[:id])

  erb :profile
end

