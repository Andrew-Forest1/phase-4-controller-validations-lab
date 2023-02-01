class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :handle_invalid

    private

    def handle_invalid(invalid)
        render json: {errors: invalid.record.errors.full_messages}
    end
end
