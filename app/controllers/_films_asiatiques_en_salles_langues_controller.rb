class FilmsAsiatiquesEnSallesLanguesController < ApplicationController
  before_action :set__films_asiatiques_en_salles_langue, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_en_salles_langues or /_films_asiatiques_en_salles_langues.json
  def index
    @_films_asiatiques_en_salles_langues = FilmsAsiatiquesEnSallesLangue.all
  end

  # GET /_films_asiatiques_en_salles_langues/1 or /_films_asiatiques_en_salles_langues/1.json
  def show
  end

  # GET /_films_asiatiques_en_salles_langues/new
  def new
    @_films_asiatiques_en_salles_langue = FilmsAsiatiquesEnSallesLangue.new
  end

  # GET /_films_asiatiques_en_salles_langues/1/edit
  def edit
  end

  # POST /_films_asiatiques_en_salles_langues or /_films_asiatiques_en_salles_langues.json
  def create
    @_films_asiatiques_en_salles_langue = FilmsAsiatiquesEnSallesLangue.new(_films_asiatiques_en_salles_langue_params)

    respond_to do |format|
      if @_films_asiatiques_en_salles_langue.save
        format.html { redirect_to _films_asiatiques_en_salles_langue_url(@_films_asiatiques_en_salles_langue), notice: "Films asiatiques en salles langue was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_en_salles_langue }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_langue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_en_salles_langues/1 or /_films_asiatiques_en_salles_langues/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_en_salles_langue.update(_films_asiatiques_en_salles_langue_params)
        format.html { redirect_to _films_asiatiques_en_salles_langue_url(@_films_asiatiques_en_salles_langue), notice: "Films asiatiques en salles langue was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_en_salles_langue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_langue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_en_salles_langues/1 or /_films_asiatiques_en_salles_langues/1.json
  def destroy
    @_films_asiatiques_en_salles_langue.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_en_salles_langues_url, notice: "Films asiatiques en salles langue was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_en_salles_langue
      @_films_asiatiques_en_salles_langue = FilmsAsiatiquesEnSallesLangue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_en_salles_langue_params
      params.require(:_films_asiatiques_en_salles_langue).permit(:name)
    end
end
