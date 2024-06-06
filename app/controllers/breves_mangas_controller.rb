class BrevesMangasController < ApplicationController
  before_action :set__breves_manga, only: %i[ show edit update destroy ]

  # GET /_breves_mangas or /_breves_mangas.json
  def index
    @_breves_mangas = BrevesManga.all
  end

  # GET /_breves_mangas/1 or /_breves_mangas/1.json
  def show
  end

  # GET /_breves_mangas/new
  def new
    @_breves_manga = BrevesManga.new
  end

  # GET /_breves_mangas/1/edit
  def edit
  end

  # POST /_breves_mangas or /_breves_mangas.json
  def create
    @_breves_manga = BrevesManga.new(_breves_manga_params)

    respond_to do |format|
      if @_breves_manga.save
        format.html { redirect_to _breves_manga_url(@_breves_manga), notice: "Breves manga was successfully created." }
        format.json { render :show, status: :created, location: @_breves_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_mangas/1 or /_breves_mangas/1.json
  def update
    respond_to do |format|
      if @_breves_manga.update(_breves_manga_params)
        format.html { redirect_to _breves_manga_url(@_breves_manga), notice: "Breves manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_mangas/1 or /_breves_mangas/1.json
  def destroy
    @_breves_manga.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_mangas_url, notice: "Breves manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_manga
      @_breves_manga = BrevesManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_manga_params
      params.require(:_breves_manga).permit(:name)
    end
end
