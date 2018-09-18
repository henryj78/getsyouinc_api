module Api
  module V1
    class PlaydatesController < ApplicationController

      def index
        playdates = Playdate.order('created_at DESC');
        render json: {status: 'Success', message: 'Loaded playdates', data: playdates}, status: :ok
      end

      def show
        playdate = Playdate.find(params[:id]);
        render json: {status: 'Success', message: 'Loaded playdate', data: playdate}, status: :ok
      end

      def create
        playdate = Playdate.new(playdate_params)
        if playdate.save
          render json: {status: 'Success', message: 'Save playdate', data: playdate}, status: :ok
        else
          render json: {status: 'Error', message: 'Playdate not saved', data: playdate.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        playdate = Playdate.find(params[:id]);
        playdate.destroy
        render json: {status: 'Success', message: 'Deleted playdate', data: playdate }, status: :ok
      end

      def update
        playdate = Playdate.find(params[:id])
        if member.update_attributes(playdate_params)
          render json: {status: 'Success', message: 'Update playdate', data: playdate}, status: :ok
        else
          render json: {status: 'Error', message: 'Playdate not updated', data: playdate.errors}, status: :unprocessable_entity
        end
      end

      private

      def playdate_params
        params.permit(:ember_id, :question1, :question2, :question3, :question4, :question5,
        :question6, :question7, :question8, :question9, :question10,  :question11, :question12,
        :question13, :question14, :question15, :question16, :question15, :question17,
        :question18, :question19, :question20)
      end

    end
  end
end
