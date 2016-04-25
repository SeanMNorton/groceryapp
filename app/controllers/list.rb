get '/list/:id' do
  @list = List.find(params[:id])
  erb :"list"
end
