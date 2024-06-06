class MangasMangaPlusController < ApplicationController
  before_action :set__mangas_manga_plu, only: %i[ show edit update destroy ]

  # GET /_mangas_manga_plus or /_mangas_manga_plus.json
  def index
    @_mangas_manga_plus = MangasMangaPlu.all
  end

  # GET /_mangas_manga_plus/1 or /_mangas_manga_plus/1.json
  def show
  end

  # GET /_mangas_manga_plus/new
  def new
    @_mangas_manga_plu = MangasMangaPlu.new
  end

  # GET /_mangas_manga_plus/1/edit
  def edit
  end

  # POST /_mangas_manga_plus or /_mangas_manga_plus.json
  def create
    @_mangas_manga_plu = MangasMangaPlu.new(_mangas_manga_plu_params)

    respond_to do |format|
      if @_mangas_manga_plu.save
        format.html { redirect_to _mangas_manga_plu_url(@_mangas_manga_plu), notice: "Mangas manga plu was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_manga_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_manga_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_manga_plus/1 or /_mangas_manga_plus/1.json
  def update
    respond_to do |format|
      if @_mangas_manga_plu.update(_mangas_manga_plu_params)
        format.html { redirect_to _mangas_manga_plu_url(@_mangas_manga_plu), notice: "Mangas manga plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_manga_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_manga_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_manga_plus/1 or /_mangas_manga_plus/1.json
  def destroy
    @_mangas_manga_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_manga_plus_url, notice: "Mangas manga plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_manga_plu
      @_mangas_manga_plu = MangasMangaPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_manga_plu_params
      params.require(:_mangas_manga_plu).permit(:name)
    end
end
