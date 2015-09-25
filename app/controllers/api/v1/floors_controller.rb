module Api
  module V1
    class FloorsController < ApplicationController

      respond_to :json
      def index
        respond_with Floor.all
      end

      def show
        respond_with Floor.find(params[:id])
      end

      def create
        respond_with Floor.create(params[:floor])
      end

      def update
        respond_with Floor.update(params[:id], params[:floor])
      end

      def destroy
        respond_with Floor.destroy(params[:id])
      end
      
    end
  end
end
