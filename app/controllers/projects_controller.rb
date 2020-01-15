class ProjectsController < ApplicationController

    def new

      @project = Project.new

    end

    #CREATE

    def create

      Project.create project_params

      redirect_to user_path(@current_user.id)
    end

    def index
      @projects = Project.all
    end

    def show
      @project = Project.find params[:id]
    end

    #UPDATE
    def edit
      @project = Project.find params[:id]
    end

    def update
      project = Project.find params[:id]
      project.update project_params
    end

    def destroy
      Project.destroy params[:id]

      redirect_to user_path(@current_project.id)



    end

    private

    def project_params
      params.require(:project).permit( :user_id, :title, :image,)
    end



  end


  # create_table :projects do |t|
  #   t.integer :user_id
  #   t.text :title
  #   t.text :image
  #
  #   t.timestamps
