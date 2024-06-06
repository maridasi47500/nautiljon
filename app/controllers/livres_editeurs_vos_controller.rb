class LivresEditeursVosController < ApplicationController
  before_action :set__livres_editeurs_vo, only: %i[ show edit update destroy ]

  # GET /_livres_editeurs_vos or /_livres_editeurs_vos.json
  def index
    @_livres_editeurs_vos = LivresEditeursVo.all
  end

  # GET /_livres_editeurs_vos/1 or /_livres_editeurs_vos/1.json
  def show
  end

  # GET /_livres_editeurs_vos/new
  def new
    @_livres_editeurs_vo = LivresEditeursVo.new
  end

  # GET /_livres_editeurs_vos/1/edit
  def edit
  end

  # POST /_livres_editeurs_vos or /_livres_editeurs_vos.json
  def create
    @_livres_editeurs_vo = LivresEditeursVo.new(_livres_editeurs_vo_params)

    respond_to do |format|
      if @_livres_editeurs_vo.save
        format.html { redirect_to livres_editeurs_vo_url(@_livres_editeurs_vo), notice: "Livres editeurs vo was successfully created." }
        format.json { render :show, status: :created, location: @_livres_editeurs_vo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_editeurs_vos/1 or /_livres_editeurs_vos/1.json
  def update
    respond_to do |format|
      if @_livres_editeurs_vo.update(_livres_editeurs_vo_params)
        format.html { redirect_to livres_editeurs_vo_url(@_livres_editeurs_vo), notice: "Livres editeurs vo was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_editeurs_vo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_editeurs_vos/1 or /_livres_editeurs_vos/1.json
  def destroy
    @_livres_editeurs_vo.destroy!

    respond_to do |format|
      format.html { redirect_to livres_editeurs_vos_url, notice: "Livres editeurs vo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_editeurs_vo
      @_livres_editeurs_vo = LivresEditeursVo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_editeurs_vo_params
      params.require(:livres_editeurs_vo).permit(:name)
    end
end
