module Api
  module V1
    class MembersController < ApplicationController

      def index
        members = Member.order('created_at DESC');
        render json: {status: 'Success', message: 'Loaded members', data: members}, status: :ok
      end

      def show
        member = Member.find(params[:id]);
        render json: {status: 'Success', message: 'Loaded member', data: member}, status: :ok
      end

      def create
        member = Member.new(member_params)
        if member.save
          render json: {status: 'Success', message: 'Save member', data: member}, status: :ok
        else
          render json: {status: 'Error', message: 'Member not saved', data: member.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        member = Member.find(params[:id]);
        member.destroy
        render json: {status: 'Success', message: 'Deleted member', data: member}, status: :ok
      end

      def update
        member = Member.find(params[:id])
        if member.update_attributes(member_params)
          render json: {status: 'Success', message: 'Update member', data: member}, status: :ok
        else
          render json: {status: 'Error', message: 'Member not updated', data: member.errors}, status: :unprocessable_entity
        end
      end

      private

      def member_params
        params.permit(:first_name, :last_name, :email, :member_description)
      end

    end
  end
end
