class BrevesGoodiesController < ApplicationController
  before_action :set__breves_goody, only: %i[ show edit update destroy ]

  # GET /_breves_goodies or /_breves_goodies.json
  def index
    @_breves_goodies = BrevesGoody.all
  end

  # GET /_breves_goodies/1 or /_breves_goodies/1.json
  def show
  end

  # GET /_breves_goodies/new
  def new
    @_breves_goody = BrevesGoody.new
  end

  # GET /_breves_goodies/1/edit
  def edit
  end

  # POST /_breves_goodies or /_breves_goodies.json
  def create
    @_breves_goody = BrevesGoody.new(_breves_goody_params)

    respond_to do |format|
      if @_breves_goody.save
        format.html { redirect_to breves_goody_url(@_breves_goody), notice: "Breves goody was successfully created." }
        format.json { render :show, status: :created, location: @_breves_goody }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_goodies/1 or /_breves_goodies/1.json
  def update
    respond_to do |format|
      if @_breves_goody.update(_breves_goody_params)
        format.html { redirect_to breves_goody_url(@_breves_goody), notice: "Breves goody was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_goody }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_goodies/1 or /_breves_goodies/1.json
  def destroy
    @_breves_goody.destroy!

    respond_to do |format|
      format.html { redirect_to breves_goodies_url, notice: "Breves goody was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_goody
      @_breves_goody = BrevesGoody.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_goody_params
      params.require(:breves_goody).permit(:name)
    end
end
