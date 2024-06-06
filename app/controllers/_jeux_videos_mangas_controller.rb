class JeuxVideosMangasController < ApplicationController
  before_action :set__jeux_videos_manga, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_mangas or /_jeux_videos_mangas.json
  def index
    @_jeux_videos_mangas = JeuxVideosManga.all
  end

  # GET /_jeux_videos_mangas/1 or /_jeux_videos_mangas/1.json
  def show
  end

  # GET /_jeux_videos_mangas/new
  def new
    @_jeux_videos_manga = JeuxVideosManga.new
  end

  # GET /_jeux_videos_mangas/1/edit
  def edit
  end

  # POST /_jeux_videos_mangas or /_jeux_videos_mangas.json
  def create
    @_jeux_videos_manga = JeuxVideosManga.new(_jeux_videos_manga_params)

    respond_to do |format|
      if @_jeux_videos_manga.save
        format.html { redirect_to _jeux_videos_manga_url(@_jeux_videos_manga), notice: "Jeux videos manga was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_mangas/1 or /_jeux_videos_mangas/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_manga.update(_jeux_videos_manga_params)
        format.html { redirect_to _jeux_videos_manga_url(@_jeux_videos_manga), notice: "Jeux videos manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_mangas/1 or /_jeux_videos_mangas/1.json
  def destroy
    @_jeux_videos_manga.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_mangas_url, notice: "Jeux videos manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_manga
      @_jeux_videos_manga = JeuxVideosManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_manga_params
      params.require(:_jeux_videos_manga).permit(:name)
    end
end
