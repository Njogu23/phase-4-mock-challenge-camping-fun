class SignupsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create
        signup = Signup.create!(signup_params)
        activity = Activity.find_by(id:signup.activity_id)
        render json: activity, status: 201
    end

    private

    def signup_params
        params.permit(:camper_id, :activity_id, :time)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end 
end