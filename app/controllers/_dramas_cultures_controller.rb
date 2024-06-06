class DramasCulturesController < ApplicationController
  before_action :set__dramas_culture, only: %i[ show edit update destroy ]

  # GET /_dramas_cultures or /_dramas_cultures.json
  def index
    @_dramas_cultures = DramasCulture.all
  end

  # GET /_dramas_cultures/1 or /_dramas_cultures/1.json
  def show
  end

  # GET /_dramas_cultures/new
  def new
    @_dramas_culture = DramasCulture.new
  end

  # GET /_dramas_cultures/1/edit
  def edit
  end

  # POST /_dramas_cultures or /_dramas_cultures.json
  def create
    @_dramas_culture = DramasCulture.new(_dramas_culture_params)

    respond_to do |format|
      if @_dramas_culture.save
        format.html { redirect_to _dramas_culture_url(@_dramas_culture), notice: "Dramas culture was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_culture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_cultures/1 or /_dramas_cultures/1.json
  def update
    respond_to do |format|
      if @_dramas_culture.update(_dramas_culture_params)
        format.html { redirect_to _dramas_culture_url(@_dramas_culture), notice: "Dramas culture was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_culture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_cultures/1 or /_dramas_cultures/1.json
  def destroy
    @_dramas_culture.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_cultures_url, notice: "Dramas culture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_culture
      @_dramas_culture = DramasCulture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_culture_params
      params.require(:_dramas_culture).permit(:name)
    end
end
