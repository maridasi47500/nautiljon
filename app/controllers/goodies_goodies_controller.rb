class GoodiesGoodiesController < ApplicationController
  before_action :set__goodies_goody, only: %i[ show edit update destroy ]

  # GET /_goodies_goodies or /_goodies_goodies.json
  def index
    @_goodies_goodies = GoodiesGoody.all
  end

  # GET /_goodies_goodies/1 or /_goodies_goodies/1.json
  def show
  end

  # GET /_goodies_goodies/new
  def new
    @_goodies_goody = GoodiesGoody.new
  end

  # GET /_goodies_goodies/1/edit
  def edit
  end

  # POST /_goodies_goodies or /_goodies_goodies.json
  def create
    @_goodies_goody = GoodiesGoody.new(_goodies_goody_params)

    respond_to do |format|
      if @_goodies_goody.save
        format.html { redirect_to goodies_goody_url(@_goodies_goody), notice: "Goodies goody was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_goody }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_goodies/1 or /_goodies_goodies/1.json
  def update
    respond_to do |format|
      if @_goodies_goody.update(_goodies_goody_params)
        format.html { redirect_to goodies_goody_url(@_goodies_goody), notice: "Goodies goody was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_goody }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_goodies/1 or /_goodies_goodies/1.json
  def destroy
    @_goodies_goody.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_goodies_url, notice: "Goodies goody was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_goody
      @_goodies_goody = GoodiesGoody.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_goody_params
      params.require(:goodies_goody).permit(:name)
    end
end
