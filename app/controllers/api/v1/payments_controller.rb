module Api
  module V1
    class PaymentsController < ApplicationController

      def index
        payments = Payment.order('created_at DESC');
        render json: {status: 'Success', message: 'Loaded all payments', data: payments}, status: :ok
      end

      def show
        payment = Payment.find(params[:id]);
        render json: {status: 'Success', message: 'Loaded payment', data: payment }, status: :ok
      end

      def create
        payment = Payment.new(payment_params)
        if payment.save
          render json: {status: 'Success', message: 'Save payment', data: payment}, status: :ok
        else
          render json: {status: 'Error', message: 'Payment has not been saved', data: member.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        payment = Payment.find(params[:id]);
        payment.destroy
        render json: {status: 'Success', message: 'Deleted payment', data: payment }, status: :ok
      end

      def update
        payment = Payment.find(params[:id])
        if payment.update_attributes(payment_params)
          render json: {status: 'Success', message: 'Update payment', data: payment}, status: :ok
        else
          render json: {status: 'Error', message: 'Payment not updated', data: payment.errors}, status: :unprocessable_entity
        end
      end

      private

      def payment_params
        params.permit(:member_id, :amount)
      end

    end
  end
end
