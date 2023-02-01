class AuthorsController < ApplicationController
  
  def show
    author = Author.find(params[:id])

    render json: author
  end

  def create
    author = Author.create!(author_params)

    rescue ActiveRecord::RecordInvalid => invalid
    
    render json: {errors: invalid.record.errors}, status: :unprocessable_entity

    # if author.valid?
    #   render json: author, status: :created
    # else
    #   render json: {errors: "Invalid data - could not create author"}, status: :unprocessable_entity
    # end
  end

  private
  
  def author_params
    params.permit(:email, :name)
  end
  
end
