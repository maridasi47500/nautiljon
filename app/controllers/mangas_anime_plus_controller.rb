class MangasAnimePlusController < ApplicationController
  before_action :set__mangas_anime_plu, only: %i[ show edit update destroy ]

  # GET /_mangas_anime_plus or /_mangas_anime_plus.json
  def index
    @_mangas_anime_plus = MangasAnimePlu.all
  end

  # GET /_mangas_anime_plus/1 or /_mangas_anime_plus/1.json
  def show
  end

  # GET /_mangas_anime_plus/new
  def new
    @_mangas_anime_plu = MangasAnimePlu.new
  end

  # GET /_mangas_anime_plus/1/edit
  def edit
  end

  # POST /_mangas_anime_plus or /_mangas_anime_plus.json
  def create
    @_mangas_anime_plu = MangasAnimePlu.new(_mangas_anime_plu_params)

    respond_to do |format|
      if @_mangas_anime_plu.save
        format.html { redirect_to _mangas_anime_plu_url(@_mangas_anime_plu), notice: "Mangas anime plu was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_anime_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_anime_plus/1 or /_mangas_anime_plus/1.json
  def update
    respond_to do |format|
      if @_mangas_anime_plu.update(_mangas_anime_plu_params)
        format.html { redirect_to _mangas_anime_plu_url(@_mangas_anime_plu), notice: "Mangas anime plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_anime_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_anime_plus/1 or /_mangas_anime_plus/1.json
  def destroy
    @_mangas_anime_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_anime_plus_url, notice: "Mangas anime plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_anime_plu
      @_mangas_anime_plu = MangasAnimePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_anime_plu_params
      params.require(:_mangas_anime_plu).permit(:name)
    end
end
