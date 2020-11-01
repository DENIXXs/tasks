class ProjectsController < ApplicationController
	def index
		# render json: {message: "ok"}
		@tasks = Task.all
	end

	def new
		@task = Task.new
	end

	def show
		@task = Task.find(params[:id])
	end

	def create
		@task = Task.new(parameters)
		if true
		@task.save
		redirect_to 'index'
	end
	end

	def edit
		@task = Task.find(params[:id])
	end

	def update
		@task = Task.find(params[:id])
	end
	private

	def parameters
		params.require(:task).permit(:title)
	end
end
