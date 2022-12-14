class MarriagesController < ApplicationController
  before_action :set_marriage, only: %i[ show update destroy ]

  # GET /marriages
  def index
    @marriages = Person.find_by(params[:person_id]).marriages

    render json: @marriages
  end

  # GET /marriages/1
  def show
    render json: @marriage
  end

  # POST /marriages
  def create
    @marriage = Marriage.new(marriage_params.except(:spouse_ids).permit!)

    if @marriage.save
      spouse_a = Person.find marriage_params[:spouse_ids].first
      spouse_b = Person.find marriage_params[:spouse_ids].second

			spouse_a.marriages << @marriage
			spouse_a.marriage_status = 'M'
			spouse_a.save

			spouse_b.marriages << @marriage
			spouse_b.marriage_status = 'M'
			spouse_b.save

      render json: @marriage, status: :created, location: @marriage
    else
      render json: @marriage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /marriages/1
  def update
    if @marriage.update(marriage_params.permit!)
      render json: @marriage
    else
      render json: @marriage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /marriages/1
  def destroy
    @marriage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marriage
      @marriage = Marriage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marriage_params
      params.fetch(:marriage, {})
    end
end
