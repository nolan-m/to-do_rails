class ListsController < ApplicationController

  def index
    @lists = List.all
    @list = List.new
    render('/lists/index.html.erb')
  end

  def new
    @list = List.new
    render('/lists/index.html.erb')
  end

  def create
    @list = List.new(:name => params[:name])
    @lists = List.all
    if @list.save
      render('/lists/index.html.erb')
    else
      render('/lists/index.html.erb')
    end
  end

  def show
    @list = List.find(params[:id])
    @tasks = Task.where(:list_id => @list.id)
    @task = Task.new
    render('/lists/show.html.erb')
  end

  def edit
    @list = List.find(params[:id])
    render('lists/edit.html.erb')
  end

  def update
    @lists = List.all
    @list = List.find(params[:id])
    if @list.update(:name => params[:name])
      render('/lists/index.html.erb')
    else
      render('/lists/edit.html.erb')
    end
  end

  def destroy
    @lists = List.all
    @list = List.find(params[:id])
    @list.destroy
    render('lists/index.html.erb')
  end

end
