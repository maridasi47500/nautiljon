class LivresEditeursVfsController < ApplicationController
  before_action :set__livres_editeurs_vf, only: %i[ show edit update destroy ]

  # GET /_livres_editeurs_vfs or /_livres_editeurs_vfs.json
  def index
    @_livres_editeurs_vfs = LivresEditeursVf.all
  end

  # GET /_livres_editeurs_vfs/1 or /_livres_editeurs_vfs/1.json
  def show
  end

  # GET /_livres_editeurs_vfs/new
  def new
    @_livres_editeurs_vf = LivresEditeursVf.new
  end

  # GET /_livres_editeurs_vfs/1/edit
  def edit
  end

  # POST /_livres_editeurs_vfs or /_livres_editeurs_vfs.json
  def create
    @_livres_editeurs_vf = LivresEditeursVf.new(_livres_editeurs_vf_params)

    respond_to do |format|
      if @_livres_editeurs_vf.save
        format.html { redirect_to livres_editeurs_vf_url(@_livres_editeurs_vf), notice: "Livres editeurs vf was successfully created." }
        format.json { render :show, status: :created, location: @_livres_editeurs_vf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_editeurs_vfs/1 or /_livres_editeurs_vfs/1.json
  def update
    respond_to do |format|
      if @_livres_editeurs_vf.update(_livres_editeurs_vf_params)
        format.html { redirect_to livres_editeurs_vf_url(@_livres_editeurs_vf), notice: "Livres editeurs vf was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_editeurs_vf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_editeurs_vfs/1 or /_livres_editeurs_vfs/1.json
  def destroy
    @_livres_editeurs_vf.destroy!

    respond_to do |format|
      format.html { redirect_to livres_editeurs_vfs_url, notice: "Livres editeurs vf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_editeurs_vf
      @_livres_editeurs_vf = LivresEditeursVf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_editeurs_vf_params
      params.require(:livres_editeurs_vf).permit(:name)
    end
end
