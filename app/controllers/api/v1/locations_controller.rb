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
        respond_with Location.create(location_params)
      end

      def update
        respond_with Location.update(params[:id], params[:location])
      end

      def destroy
        respond_with Location.destroy(params[:id])
      end

      private
      def location_params
        params.require(:location).permit(:user_id, :floor_name, :motion_data, :uuid, :minor, :major, :username)
      end

    end
  end
end
