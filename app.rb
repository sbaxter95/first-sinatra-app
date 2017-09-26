require 'sinatra'
require_relative 'ToDoManager.rb'

get '/todos' do
	ToDoManager.index
end

post '/todos' do
	todo = params['todo']
	ToDoManager.create(todo)
end

get '/todos/:id' do
	id = params[:id].to_i
	ToDoManager.show(id)
end

put '/todos/:id' do
	id = params[:id].to_i
	update = params[:update]
	ToDoManager.update(id, update)
end

delete '/todos/:id' do
	id = params[:id].to_i
	ToDoManager.delete(id)
end