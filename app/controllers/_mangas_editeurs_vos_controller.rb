class MangasEditeursVosController < ApplicationController
  before_action :set__mangas_editeurs_vo, only: %i[ show edit update destroy ]

  # GET /_mangas_editeurs_vos or /_mangas_editeurs_vos.json
  def index
    @_mangas_editeurs_vos = MangasEditeursVo.all
  end

  # GET /_mangas_editeurs_vos/1 or /_mangas_editeurs_vos/1.json
  def show
  end

  # GET /_mangas_editeurs_vos/new
  def new
    @_mangas_editeurs_vo = MangasEditeursVo.new
  end

  # GET /_mangas_editeurs_vos/1/edit
  def edit
  end

  # POST /_mangas_editeurs_vos or /_mangas_editeurs_vos.json
  def create
    @_mangas_editeurs_vo = MangasEditeursVo.new(_mangas_editeurs_vo_params)

    respond_to do |format|
      if @_mangas_editeurs_vo.save
        format.html { redirect_to _mangas_editeurs_vo_url(@_mangas_editeurs_vo), notice: "Mangas editeurs vo was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_editeurs_vo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_editeurs_vos/1 or /_mangas_editeurs_vos/1.json
  def update
    respond_to do |format|
      if @_mangas_editeurs_vo.update(_mangas_editeurs_vo_params)
        format.html { redirect_to _mangas_editeurs_vo_url(@_mangas_editeurs_vo), notice: "Mangas editeurs vo was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_editeurs_vo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_editeurs_vos/1 or /_mangas_editeurs_vos/1.json
  def destroy
    @_mangas_editeurs_vo.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_editeurs_vos_url, notice: "Mangas editeurs vo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_editeurs_vo
      @_mangas_editeurs_vo = MangasEditeursVo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_editeurs_vo_params
      params.require(:_mangas_editeurs_vo).permit(:name)
    end
end
