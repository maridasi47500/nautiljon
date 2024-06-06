class AnimesEditeursVfsController < ApplicationController
  before_action :set_animes_editeurs_vf, only: %i[ show edit update destroy ]

  # GET /animes_editeurs_vfs or /animes_editeurs_vfs.json
  def index
    @animes_editeurs_vfs = AnimesEditeursVf.all
  end

  # GET /animes_editeurs_vfs/1 or /animes_editeurs_vfs/1.json
  def show
  end

  # GET /animes_editeurs_vfs/new
  def new
    @animes_editeurs_vf = AnimesEditeursVf.new
  end

  # GET /animes_editeurs_vfs/1/edit
  def edit
  end

  # POST /animes_editeurs_vfs or /animes_editeurs_vfs.json
  def create
    @animes_editeurs_vf = AnimesEditeursVf.new(animes_editeurs_vf_params)

    respond_to do |format|
      if @animes_editeurs_vf.save
        format.html { redirect_to animes_editeurs_vf_url(@animes_editeurs_vf), notice: "Animes editeurs vf was successfully created." }
        format.json { render :show, status: :created, location: @animes_editeurs_vf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_editeurs_vfs/1 or /animes_editeurs_vfs/1.json
  def update
    respond_to do |format|
      if @animes_editeurs_vf.update(animes_editeurs_vf_params)
        format.html { redirect_to animes_editeurs_vf_url(@animes_editeurs_vf), notice: "Animes editeurs vf was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_editeurs_vf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_editeurs_vfs/1 or /animes_editeurs_vfs/1.json
  def destroy
    @animes_editeurs_vf.destroy!

    respond_to do |format|
      format.html { redirect_to animes_editeurs_vfs_url, notice: "Animes editeurs vf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_editeurs_vf
      @animes_editeurs_vf = AnimesEditeursVf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_editeurs_vf_params
      params.require(:animes_editeurs_vf).permit(:name)
    end
end
