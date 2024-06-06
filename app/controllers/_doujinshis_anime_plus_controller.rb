class DoujinshisAnimePlusController < ApplicationController
  before_action :set__doujinshis_anime_plu, only: %i[ show edit update destroy ]

  # GET /_doujinshis_anime_plus or /_doujinshis_anime_plus.json
  def index
    @_doujinshis_anime_plus = DoujinshisAnimePlu.all
  end

  # GET /_doujinshis_anime_plus/1 or /_doujinshis_anime_plus/1.json
  def show
  end

  # GET /_doujinshis_anime_plus/new
  def new
    @_doujinshis_anime_plu = DoujinshisAnimePlu.new
  end

  # GET /_doujinshis_anime_plus/1/edit
  def edit
  end

  # POST /_doujinshis_anime_plus or /_doujinshis_anime_plus.json
  def create
    @_doujinshis_anime_plu = DoujinshisAnimePlu.new(_doujinshis_anime_plu_params)

    respond_to do |format|
      if @_doujinshis_anime_plu.save
        format.html { redirect_to _doujinshis_anime_plu_url(@_doujinshis_anime_plu), notice: "Doujinshis anime plu was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_anime_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_anime_plus/1 or /_doujinshis_anime_plus/1.json
  def update
    respond_to do |format|
      if @_doujinshis_anime_plu.update(_doujinshis_anime_plu_params)
        format.html { redirect_to _doujinshis_anime_plu_url(@_doujinshis_anime_plu), notice: "Doujinshis anime plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_anime_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_anime_plus/1 or /_doujinshis_anime_plus/1.json
  def destroy
    @_doujinshis_anime_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_anime_plus_url, notice: "Doujinshis anime plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_anime_plu
      @_doujinshis_anime_plu = DoujinshisAnimePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_anime_plu_params
      params.require(:_doujinshis_anime_plu).permit(:name)
    end
end
