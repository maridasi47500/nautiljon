class BrevesCulturesController < ApplicationController
  before_action :set__breves_culture, only: %i[ show edit update destroy ]

  # GET /_breves_cultures or /_breves_cultures.json
  def index
    @_breves_cultures = BrevesCulture.all
  end

  # GET /_breves_cultures/1 or /_breves_cultures/1.json
  def show
  end

  # GET /_breves_cultures/new
  def new
    @_breves_culture = BrevesCulture.new
  end

  # GET /_breves_cultures/1/edit
  def edit
  end

  # POST /_breves_cultures or /_breves_cultures.json
  def create
    @_breves_culture = BrevesCulture.new(_breves_culture_params)

    respond_to do |format|
      if @_breves_culture.save
        format.html { redirect_to _breves_culture_url(@_breves_culture), notice: "Breves culture was successfully created." }
        format.json { render :show, status: :created, location: @_breves_culture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_cultures/1 or /_breves_cultures/1.json
  def update
    respond_to do |format|
      if @_breves_culture.update(_breves_culture_params)
        format.html { redirect_to _breves_culture_url(@_breves_culture), notice: "Breves culture was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_culture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_cultures/1 or /_breves_cultures/1.json
  def destroy
    @_breves_culture.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_cultures_url, notice: "Breves culture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_culture
      @_breves_culture = BrevesCulture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_culture_params
      params.require(:_breves_culture).permit(:name)
    end
end
