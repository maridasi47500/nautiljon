class DramasEncoursController < ApplicationController
  before_action :set__dramas_encour, only: %i[ show edit update destroy ]

  # GET /_dramas_encours or /_dramas_encours.json
  def index
    @_dramas_encours = DramasEncour.all
  end

  # GET /_dramas_encours/1 or /_dramas_encours/1.json
  def show
  end

  # GET /_dramas_encours/new
  def new
    @_dramas_encour = DramasEncour.new
  end

  # GET /_dramas_encours/1/edit
  def edit
  end

  # POST /_dramas_encours or /_dramas_encours.json
  def create
    @_dramas_encour = DramasEncour.new(_dramas_encour_params)

    respond_to do |format|
      if @_dramas_encour.save
        format.html { redirect_to dramas_encour_url(@_dramas_encour), notice: "Dramas encour was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_encour }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_encour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_encours/1 or /_dramas_encours/1.json
  def update
    respond_to do |format|
      if @_dramas_encour.update(_dramas_encour_params)
        format.html { redirect_to dramas_encour_url(@_dramas_encour), notice: "Dramas encour was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_encour }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_encour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_encours/1 or /_dramas_encours/1.json
  def destroy
    @_dramas_encour.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_encours_url, notice: "Dramas encour was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_encour
      @_dramas_encour = DramasEncour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_encour_params
      params.require(:dramas_encour).permit(:name)
    end
end
