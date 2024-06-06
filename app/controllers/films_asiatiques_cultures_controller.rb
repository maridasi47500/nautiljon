class FilmsAsiatiquesCulturesController < ApplicationController
  before_action :set__films_asiatiques_culture, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_cultures or /_films_asiatiques_cultures.json
  def index
    @_films_asiatiques_cultures = FilmsAsiatiquesCulture.all
  end

  # GET /_films_asiatiques_cultures/1 or /_films_asiatiques_cultures/1.json
  def show
  end

  # GET /_films_asiatiques_cultures/new
  def new
    @_films_asiatiques_culture = FilmsAsiatiquesCulture.new
  end

  # GET /_films_asiatiques_cultures/1/edit
  def edit
  end

  # POST /_films_asiatiques_cultures or /_films_asiatiques_cultures.json
  def create
    @_films_asiatiques_culture = FilmsAsiatiquesCulture.new(_films_asiatiques_culture_params)

    respond_to do |format|
      if @_films_asiatiques_culture.save
        format.html { redirect_to films_asiatiques_culture_url(@_films_asiatiques_culture), notice: "Films asiatiques culture was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_culture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_cultures/1 or /_films_asiatiques_cultures/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_culture.update(_films_asiatiques_culture_params)
        format.html { redirect_to films_asiatiques_culture_url(@_films_asiatiques_culture), notice: "Films asiatiques culture was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_culture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_cultures/1 or /_films_asiatiques_cultures/1.json
  def destroy
    @_films_asiatiques_culture.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_cultures_url, notice: "Films asiatiques culture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_culture
      @_films_asiatiques_culture = FilmsAsiatiquesCulture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_culture_params
      params.require(:films_asiatiques_culture).permit(:name)
    end
end
