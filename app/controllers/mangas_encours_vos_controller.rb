class MangasEncoursVosController < ApplicationController
  before_action :set__mangas_encours_vo, only: %i[ show edit update destroy ]

  # GET /_mangas_encours_vos or /_mangas_encours_vos.json
  def index
    @_mangas_encours_vos = MangasEncoursVo.all
  end

  # GET /_mangas_encours_vos/1 or /_mangas_encours_vos/1.json
  def show
  end

  # GET /_mangas_encours_vos/new
  def new
    @_mangas_encours_vo = MangasEncoursVo.new
  end

  # GET /_mangas_encours_vos/1/edit
  def edit
  end

  # POST /_mangas_encours_vos or /_mangas_encours_vos.json
  def create
    @_mangas_encours_vo = MangasEncoursVo.new(_mangas_encours_vo_params)

    respond_to do |format|
      if @_mangas_encours_vo.save
        format.html { redirect_to _mangas_encours_vo_url(@_mangas_encours_vo), notice: "Mangas encours vo was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_encours_vo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_encours_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_encours_vos/1 or /_mangas_encours_vos/1.json
  def update
    respond_to do |format|
      if @_mangas_encours_vo.update(_mangas_encours_vo_params)
        format.html { redirect_to _mangas_encours_vo_url(@_mangas_encours_vo), notice: "Mangas encours vo was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_encours_vo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_encours_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_encours_vos/1 or /_mangas_encours_vos/1.json
  def destroy
    @_mangas_encours_vo.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_encours_vos_url, notice: "Mangas encours vo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_encours_vo
      @_mangas_encours_vo = MangasEncoursVo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_encours_vo_params
      params.require(:_mangas_encours_vo).permit(:name)
    end
end
