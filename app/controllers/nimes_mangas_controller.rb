class AnimesMangasController < ApplicationController
  before_action :set_animes_manga, only: %i[ show edit update destroy ]

  # GET /animes_mangas or /animes_mangas.json
  def index
    @animes_mangas = AnimesManga.all
  end

  # GET /animes_mangas/1 or /animes_mangas/1.json
  def show
  end

  # GET /animes_mangas/new
  def new
    @animes_manga = AnimesManga.new
  end

  # GET /animes_mangas/1/edit
  def edit
  end

  # POST /animes_mangas or /animes_mangas.json
  def create
    @animes_manga = AnimesManga.new(animes_manga_params)

    respond_to do |format|
      if @animes_manga.save
        format.html { redirect_to animes_manga_url(@animes_manga), notice: "Animes manga was successfully created." }
        format.json { render :show, status: :created, location: @animes_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_mangas/1 or /animes_mangas/1.json
  def update
    respond_to do |format|
      if @animes_manga.update(animes_manga_params)
        format.html { redirect_to animes_manga_url(@animes_manga), notice: "Animes manga was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_mangas/1 or /animes_mangas/1.json
  def destroy
    @animes_manga.destroy!

    respond_to do |format|
      format.html { redirect_to animes_mangas_url, notice: "Animes manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_manga
      @animes_manga = AnimesManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_manga_params
      params.require(:animes_manga).permit(:name)
    end
end
