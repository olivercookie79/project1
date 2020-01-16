class ProjectsController < ApplicationController

    def new
      @project = Project.new
    end

    #CREATE

    def create
      # p2 = Project.create project_params
      p2 = Project.create title: params[:project][:title], user_id: @current_user.id
      # raise 'hell'
      redirect_to user_path(@current_user.id)
    end

    def index
      # this gets all the projects from the database
      @projects = Project.all
    end

    def show
      @project = Project.find( params[:id] )
      @revision = Revision.new
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




# for(  let i = 0; i < dogs.length; i++ ){
#
#   const dog = dogs[i]
# }
# position: { lat: dog.latitude, lng: dog.longitude}
# map: map,
# title: dog.name
# });
#
# }
# var bounds - new  google.maps.latLngBounds
