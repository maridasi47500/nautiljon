class FilmsAsiatiquesMangasController < ApplicationController
  before_action :set__films_asiatiques_manga, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_mangas or /_films_asiatiques_mangas.json
  def index
    @_films_asiatiques_mangas = FilmsAsiatiquesManga.all
  end

  # GET /_films_asiatiques_mangas/1 or /_films_asiatiques_mangas/1.json
  def show
  end

  # GET /_films_asiatiques_mangas/new
  def new
    @_films_asiatiques_manga = FilmsAsiatiquesManga.new
  end

  # GET /_films_asiatiques_mangas/1/edit
  def edit
  end

  # POST /_films_asiatiques_mangas or /_films_asiatiques_mangas.json
  def create
    @_films_asiatiques_manga = FilmsAsiatiquesManga.new(_films_asiatiques_manga_params)

    respond_to do |format|
      if @_films_asiatiques_manga.save
        format.html { redirect_to _films_asiatiques_manga_url(@_films_asiatiques_manga), notice: "Films asiatiques manga was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_mangas/1 or /_films_asiatiques_mangas/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_manga.update(_films_asiatiques_manga_params)
        format.html { redirect_to _films_asiatiques_manga_url(@_films_asiatiques_manga), notice: "Films asiatiques manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_mangas/1 or /_films_asiatiques_mangas/1.json
  def destroy
    @_films_asiatiques_manga.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_mangas_url, notice: "Films asiatiques manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_manga
      @_films_asiatiques_manga = FilmsAsiatiquesManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_manga_params
      params.require(:_films_asiatiques_manga).permit(:name)
    end
end
