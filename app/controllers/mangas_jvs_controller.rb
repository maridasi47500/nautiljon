class MangasJvsController < ApplicationController
  before_action :set__mangas_jv, only: %i[ show edit update destroy ]

  # GET /_mangas_jvs or /_mangas_jvs.json
  def index
    @_mangas_jvs = MangasJv.all
  end

  # GET /_mangas_jvs/1 or /_mangas_jvs/1.json
  def show
  end

  # GET /_mangas_jvs/new
  def new
    @_mangas_jv = MangasJv.new
  end

  # GET /_mangas_jvs/1/edit
  def edit
  end

  # POST /_mangas_jvs or /_mangas_jvs.json
  def create
    @_mangas_jv = MangasJv.new(_mangas_jv_params)

    respond_to do |format|
      if @_mangas_jv.save
        format.html { redirect_to _mangas_jv_url(@_mangas_jv), notice: "Mangas jv was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_jvs/1 or /_mangas_jvs/1.json
  def update
    respond_to do |format|
      if @_mangas_jv.update(_mangas_jv_params)
        format.html { redirect_to _mangas_jv_url(@_mangas_jv), notice: "Mangas jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_jvs/1 or /_mangas_jvs/1.json
  def destroy
    @_mangas_jv.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_jvs_url, notice: "Mangas jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_jv
      @_mangas_jv = MangasJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_jv_params
      params.require(:_mangas_jv).permit(:name)
    end
end
