post '/users' do
  user = User.find_or_create_by(username: params[:username], password_hash: params[:password])
  user.id
  redirect "/users/#{user.id}"
end


get '/users/:id' do
  @user = User.find(params[:id])
  erb :"user/show"
end
