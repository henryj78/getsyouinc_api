module Api
  module V1
    class RoommatesController < ApplicationController

      def index
        roommates = Roommate.order('created_at DESC');
        render json: {status: 'Success', message: 'Loaded roommates', data: roommates}, status: :ok
      end

      def show
        roommate = Roommate.find(params[:id]);
        render json: {status: 'Success', message: 'Loaded roommate', data: roommate}, status: :ok
      end

      def create
        roommate = Roommate.new(friend_params)
        if roommate.save
          render json: {status: 'Success', message: 'Save roommate', data: roommate}, status: :ok
        else
          render json: {status: 'Error', message: 'Roommate not saved', data: roommate.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        roommate = Roommate.find(params[:id]);
        roommate.destroy
        render json: {status: 'Success', message: 'Deleted roommate', data: roommate }, status: :ok
      end

      def update
        roommate = Roommate.find(params[:id])
        if roommate.update_attributes(roommate_params)
          render json: {status: 'Success', message: 'Update roommate', data: roommate}, status: :ok
        else
          render json: {status: 'Error', message: 'Roommate not updated', data: roommate.errors}, status: :unprocessable_entity
        end
      end

      private

      def roommate_params
        params.permit(:ember_id, :question1, :question2, :question3, :question4, :question5,
        :question6, :question7, :question8, :question9, :question10,  :question11, :question12,
        :question13, :question14, :question15, :question16, :question15, :question17,
        :question18, :question19, :question20)
      end

    end
  end
end
