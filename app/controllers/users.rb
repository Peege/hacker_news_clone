enable :sessions
set :protection, except: :session_hijacking


get '/users' do

  erb :signup
end

post '/users/signup' do

  @user = User.create(name: params[:user][:name],password:params[:user][:password],email: params[:user][:email])

  @user.save

  redirect to ('/')
end

post '/users/login' do

  session[:name] = params[:user][:name]

  erb :index
end
