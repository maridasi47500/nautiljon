class ArtbooksMangasController < ApplicationController
  before_action :set_artbooks_manga, only: %i[ show edit update destroy ]

  # GET /artbooks_mangas or /artbooks_mangas.json
  def index
    @artbooks_mangas = ArtbooksManga.all
  end

  # GET /artbooks_mangas/1 or /artbooks_mangas/1.json
  def show
  end

  # GET /artbooks_mangas/new
  def new
    @artbooks_manga = ArtbooksManga.new
  end

  # GET /artbooks_mangas/1/edit
  def edit
  end

  # POST /artbooks_mangas or /artbooks_mangas.json
  def create
    @artbooks_manga = ArtbooksManga.new(artbooks_manga_params)

    respond_to do |format|
      if @artbooks_manga.save
        format.html { redirect_to artbooks_manga_url(@artbooks_manga), notice: "Artbooks manga was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_mangas/1 or /artbooks_mangas/1.json
  def update
    respond_to do |format|
      if @artbooks_manga.update(artbooks_manga_params)
        format.html { redirect_to artbooks_manga_url(@artbooks_manga), notice: "Artbooks manga was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_mangas/1 or /artbooks_mangas/1.json
  def destroy
    @artbooks_manga.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_mangas_url, notice: "Artbooks manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_manga
      @artbooks_manga = ArtbooksManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_manga_params
      params.require(:artbooks_manga).permit(:name)
    end
end
