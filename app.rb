require 'sinatra'
require_relative 'ToDoManager.rb'

#Index - all of the data
get '/todos' do
	ToDoManager.index
end

#Create - create a new todo
post '/todos' do
	todo = params[:todo]
	ToDoManager.create(todo)
end

#/todos?todo=new todo

#Show - show a single record
get '/todos/:id' do
	id = params[:id].to_i
	ToDoManager.show(id)
end

#Update - update a single record
put '/todos/:id' do
	id = params[:id].to_i
	update = params[:update]
	ToDoManager.update(id, update)
end

#/todos/0?update=updated todo

#Delete - delete a single record
delete '/todos/:id' do
	id = params[:id].to_i
	ToDoManager.delete(id)
end