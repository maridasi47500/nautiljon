class DoujinshisCulturesController < ApplicationController
  before_action :set__doujinshis_culture, only: %i[ show edit update destroy ]

  # GET /_doujinshis_cultures or /_doujinshis_cultures.json
  def index
    @_doujinshis_cultures = DoujinshisCulture.all
  end

  # GET /_doujinshis_cultures/1 or /_doujinshis_cultures/1.json
  def show
  end

  # GET /_doujinshis_cultures/new
  def new
    @_doujinshis_culture = DoujinshisCulture.new
  end

  # GET /_doujinshis_cultures/1/edit
  def edit
  end

  # POST /_doujinshis_cultures or /_doujinshis_cultures.json
  def create
    @_doujinshis_culture = DoujinshisCulture.new(_doujinshis_culture_params)

    respond_to do |format|
      if @_doujinshis_culture.save
        format.html { redirect_to doujinshis_culture_url(@_doujinshis_culture), notice: "Doujinshis culture was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_culture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_cultures/1 or /_doujinshis_cultures/1.json
  def update
    respond_to do |format|
      if @_doujinshis_culture.update(_doujinshis_culture_params)
        format.html { redirect_to doujinshis_culture_url(@_doujinshis_culture), notice: "Doujinshis culture was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_culture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_cultures/1 or /_doujinshis_cultures/1.json
  def destroy
    @_doujinshis_culture.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_cultures_url, notice: "Doujinshis culture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_culture
      @_doujinshis_culture = DoujinshisCulture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_culture_params
      params.require(:doujinshis_culture).permit(:name)
    end
end
