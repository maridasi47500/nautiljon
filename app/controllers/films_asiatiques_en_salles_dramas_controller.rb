class FilmsAsiatiquesEnSallesDramasController < ApplicationController
  before_action :set__films_asiatiques_en_salles_drama, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_en_salles_dramas or /_films_asiatiques_en_salles_dramas.json
  def index
    @_films_asiatiques_en_salles_dramas = FilmsAsiatiquesEnSallesDrama.all
  end

  # GET /_films_asiatiques_en_salles_dramas/1 or /_films_asiatiques_en_salles_dramas/1.json
  def show
  end

  # GET /_films_asiatiques_en_salles_dramas/new
  def new
    @_films_asiatiques_en_salles_drama = FilmsAsiatiquesEnSallesDrama.new
  end

  # GET /_films_asiatiques_en_salles_dramas/1/edit
  def edit
  end

  # POST /_films_asiatiques_en_salles_dramas or /_films_asiatiques_en_salles_dramas.json
  def create
    @_films_asiatiques_en_salles_drama = FilmsAsiatiquesEnSallesDrama.new(_films_asiatiques_en_salles_drama_params)

    respond_to do |format|
      if @_films_asiatiques_en_salles_drama.save
        format.html { redirect_to films_asiatiques_en_salles_drama_url(@_films_asiatiques_en_salles_drama), notice: "Films asiatiques en salles drama was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_en_salles_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_en_salles_dramas/1 or /_films_asiatiques_en_salles_dramas/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_en_salles_drama.update(_films_asiatiques_en_salles_drama_params)
        format.html { redirect_to films_asiatiques_en_salles_drama_url(@_films_asiatiques_en_salles_drama), notice: "Films asiatiques en salles drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_en_salles_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_en_salles_dramas/1 or /_films_asiatiques_en_salles_dramas/1.json
  def destroy
    @_films_asiatiques_en_salles_drama.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_en_salles_dramas_url, notice: "Films asiatiques en salles drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_en_salles_drama
      @_films_asiatiques_en_salles_drama = FilmsAsiatiquesEnSallesDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_en_salles_drama_params
      params.require(:films_asiatiques_en_salles_drama).permit(:name)
    end
end
