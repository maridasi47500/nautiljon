class FilmsAsiatiquesEnSallesAmsController < ApplicationController
  before_action :set__films_asiatiques_en_salles_am, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_en_salles_ams or /_films_asiatiques_en_salles_ams.json
  def index
    @_films_asiatiques_en_salles_ams = FilmsAsiatiquesEnSallesAm.all
  end

  # GET /_films_asiatiques_en_salles_ams/1 or /_films_asiatiques_en_salles_ams/1.json
  def show
  end

  # GET /_films_asiatiques_en_salles_ams/new
  def new
    @_films_asiatiques_en_salles_am = FilmsAsiatiquesEnSallesAm.new
  end

  # GET /_films_asiatiques_en_salles_ams/1/edit
  def edit
  end

  # POST /_films_asiatiques_en_salles_ams or /_films_asiatiques_en_salles_ams.json
  def create
    @_films_asiatiques_en_salles_am = FilmsAsiatiquesEnSallesAm.new(_films_asiatiques_en_salles_am_params)

    respond_to do |format|
      if @_films_asiatiques_en_salles_am.save
        format.html { redirect_to _films_asiatiques_en_salles_am_url(@_films_asiatiques_en_salles_am), notice: "Films asiatiques en salles am was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_en_salles_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_en_salles_ams/1 or /_films_asiatiques_en_salles_ams/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_en_salles_am.update(_films_asiatiques_en_salles_am_params)
        format.html { redirect_to _films_asiatiques_en_salles_am_url(@_films_asiatiques_en_salles_am), notice: "Films asiatiques en salles am was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_en_salles_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_en_salles_ams/1 or /_films_asiatiques_en_salles_ams/1.json
  def destroy
    @_films_asiatiques_en_salles_am.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_en_salles_ams_url, notice: "Films asiatiques en salles am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_en_salles_am
      @_films_asiatiques_en_salles_am = FilmsAsiatiquesEnSallesAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_en_salles_am_params
      params.require(:_films_asiatiques_en_salles_am).permit(:name)
    end
end
