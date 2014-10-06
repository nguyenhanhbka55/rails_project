class TodosController < ApplicationController
  def index
  	@todo_items = Todo.all
  	#@todo_array = ["1", "2", "3", "4", "5"]
  	render :index
  end
  def delete
  	@todo_items = Todo.find(params[:id])
  	$todo_items.destroy
  	redirect_to :action => 'index'
  end
end
