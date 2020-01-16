class RevisionsController < ApplicationController


def new

        @revision = Revision.new

      end

      #CREATE

      def create
        Revision.create revision_params

        # redirect_to project_path(@current_project.id)
        redirect_to project_path(params[:revision][:project_id])
      end

      def index
        @revisions = Revision.all
      end

      def show
        @revision = Revision.find params[:id]
      end

      #UPDATE
      def revision
        @revision = Revision.find params[:id]
      end

      def update
        project = Project.find params[:id]
        project.update project_params
      end

      def destroy
        Revision.destroy params[:id]

        redirect_to user_path(@current_project.id)



      end

      private

      def revision_params
        params.require(:revision).permit( :description, :image, :project_id)
      end



    end
