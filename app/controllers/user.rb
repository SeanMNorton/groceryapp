post '/users' do
  user = User.find_or_create_by(username: params[:username], password_hash: params[:password])
  user.id
  redirect "/users/#{user.id}"
end


get '/users/:id' do
  @user = User.find(params[:id])
  @nums = [1, 2, 3, 4, 5, 6] 
  erb :"user/show"
end
