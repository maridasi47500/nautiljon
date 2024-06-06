class DoujinshisPersoPlusController < ApplicationController
  before_action :set__doujinshis_perso_plu, only: %i[ show edit update destroy ]

  # GET /_doujinshis_perso_plus or /_doujinshis_perso_plus.json
  def index
    @_doujinshis_perso_plus = DoujinshisPersoPlu.all
  end

  # GET /_doujinshis_perso_plus/1 or /_doujinshis_perso_plus/1.json
  def show
  end

  # GET /_doujinshis_perso_plus/new
  def new
    @_doujinshis_perso_plu = DoujinshisPersoPlu.new
  end

  # GET /_doujinshis_perso_plus/1/edit
  def edit
  end

  # POST /_doujinshis_perso_plus or /_doujinshis_perso_plus.json
  def create
    @_doujinshis_perso_plu = DoujinshisPersoPlu.new(_doujinshis_perso_plu_params)

    respond_to do |format|
      if @_doujinshis_perso_plu.save
        format.html { redirect_to doujinshis_perso_plu_url(@_doujinshis_perso_plu), notice: "Doujinshis perso plu was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_perso_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_perso_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_perso_plus/1 or /_doujinshis_perso_plus/1.json
  def update
    respond_to do |format|
      if @_doujinshis_perso_plu.update(_doujinshis_perso_plu_params)
        format.html { redirect_to doujinshis_perso_plu_url(@_doujinshis_perso_plu), notice: "Doujinshis perso plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_perso_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_perso_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_perso_plus/1 or /_doujinshis_perso_plus/1.json
  def destroy
    @_doujinshis_perso_plu.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_perso_plus_url, notice: "Doujinshis perso plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_perso_plu
      @_doujinshis_perso_plu = DoujinshisPersoPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_perso_plu_params
      params.require(:doujinshis_perso_plu).permit(:name)
    end
end
