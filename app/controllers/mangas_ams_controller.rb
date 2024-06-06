class MangasAmsController < ApplicationController
  before_action :set__mangas_am, only: %i[ show edit update destroy ]

  # GET /_mangas_ams or /_mangas_ams.json
  def index
    @_mangas_ams = MangasAm.all
  end

  # GET /_mangas_ams/1 or /_mangas_ams/1.json
  def show
  end

  # GET /_mangas_ams/new
  def new
    @_mangas_am = MangasAm.new
  end

  # GET /_mangas_ams/1/edit
  def edit
  end

  # POST /_mangas_ams or /_mangas_ams.json
  def create
    @_mangas_am = MangasAm.new(_mangas_am_params)

    respond_to do |format|
      if @_mangas_am.save
        format.html { redirect_to mangas_am_url(@_mangas_am), notice: "Mangas am was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_ams/1 or /_mangas_ams/1.json
  def update
    respond_to do |format|
      if @_mangas_am.update(_mangas_am_params)
        format.html { redirect_to mangas_am_url(@_mangas_am), notice: "Mangas am was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_ams/1 or /_mangas_ams/1.json
  def destroy
    @_mangas_am.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_ams_url, notice: "Mangas am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_am
      @_mangas_am = MangasAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_am_params
      params.require(:mangas_am).permit(:name)
    end
end
