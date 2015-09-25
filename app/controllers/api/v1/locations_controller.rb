module Api
  module V1
    class LocationsController < ApplicationController

      respond_to :json
      def index
        respond_with Location.all
      end

      def show
        respond_with Location.find(params[:id])
      end

      def create
        respond_with Location.create(params[:Location])
      end

      def update
        respond_with Location.update(params[:id], params[:location])
      end

      def destroy
        respond_with Location.destroy(params[:id])
      end
    end
  end
end