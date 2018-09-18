module Api
  module V1
    class FriendsController < ApplicationController

      def index
        friends = Friend.order('created_at DESC');
        render json: {status: 'Success', message: 'Loaded friends', data: friends}, status: :ok
      end

      def show
        friend = Friend.find(params[:id]);
        render json: {status: 'Success', message: 'Loaded friend', data: friend}, status: :ok
      end

      def create
        friend = Friend.new(friend_params)
        if friend.save
          render json: {status: 'Success', message: 'Save friend', data: friend}, status: :ok
        else
          render json: {status: 'Error', message: 'Friend not saved', data: friend.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        friend = Friend.find(params[:id]);
        friend.destroy
        render json: {status: 'Success', message: 'Deleted friend', data: friend }, status: :ok
      end

      def update
        friend = Friend.find(params[:id])
        if friend.update_attributes(friend_params)
          render json: {status: 'Success', message: 'Update friend', data: friend}, status: :ok
        else
          render json: {status: 'Error', message: 'Friend not updated', data: friend.errors}, status: :unprocessable_entity
        end
      end

      private

      def friend_params
        params.permit(:ember_id, :question1, :question2, :question3, :question4, :question5,
        :question6, :question7, :question8, :question9, :question10,  :question11, :question12,
        :question13, :question14, :question15, :question16, :question15, :question17,
        :question18, :question19, :question20)
      end

    end
  end
end
