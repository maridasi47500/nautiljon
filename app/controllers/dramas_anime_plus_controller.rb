class DramasAnimePlusController < ApplicationController
  before_action :set__dramas_anime_plu, only: %i[ show edit update destroy ]

  # GET /_dramas_anime_plus or /_dramas_anime_plus.json
  def index
    @_dramas_anime_plus = DramasAnimePlu.all
  end

  # GET /_dramas_anime_plus/1 or /_dramas_anime_plus/1.json
  def show
  end

  # GET /_dramas_anime_plus/new
  def new
    @_dramas_anime_plu = DramasAnimePlu.new
  end

  # GET /_dramas_anime_plus/1/edit
  def edit
  end

  # POST /_dramas_anime_plus or /_dramas_anime_plus.json
  def create
    @_dramas_anime_plu = DramasAnimePlu.new(_dramas_anime_plu_params)

    respond_to do |format|
      if @_dramas_anime_plu.save
        format.html { redirect_to _dramas_anime_plu_url(@_dramas_anime_plu), notice: "Dramas anime plu was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_anime_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_anime_plus/1 or /_dramas_anime_plus/1.json
  def update
    respond_to do |format|
      if @_dramas_anime_plu.update(_dramas_anime_plu_params)
        format.html { redirect_to _dramas_anime_plu_url(@_dramas_anime_plu), notice: "Dramas anime plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_anime_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_anime_plus/1 or /_dramas_anime_plus/1.json
  def destroy
    @_dramas_anime_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_anime_plus_url, notice: "Dramas anime plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_anime_plu
      @_dramas_anime_plu = DramasAnimePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_anime_plu_params
      params.require(:_dramas_anime_plu).permit(:name)
    end
end
