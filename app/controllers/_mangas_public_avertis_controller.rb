class MangasPublicAvertisController < ApplicationController
  before_action :set__mangas_public_averti, only: %i[ show edit update destroy ]

  # GET /_mangas_public_avertis or /_mangas_public_avertis.json
  def index
    @_mangas_public_avertis = MangasPublicAverti.all
  end

  # GET /_mangas_public_avertis/1 or /_mangas_public_avertis/1.json
  def show
  end

  # GET /_mangas_public_avertis/new
  def new
    @_mangas_public_averti = MangasPublicAverti.new
  end

  # GET /_mangas_public_avertis/1/edit
  def edit
  end

  # POST /_mangas_public_avertis or /_mangas_public_avertis.json
  def create
    @_mangas_public_averti = MangasPublicAverti.new(_mangas_public_averti_params)

    respond_to do |format|
      if @_mangas_public_averti.save
        format.html { redirect_to _mangas_public_averti_url(@_mangas_public_averti), notice: "Mangas public averti was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_public_averti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_public_avertis/1 or /_mangas_public_avertis/1.json
  def update
    respond_to do |format|
      if @_mangas_public_averti.update(_mangas_public_averti_params)
        format.html { redirect_to _mangas_public_averti_url(@_mangas_public_averti), notice: "Mangas public averti was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_public_averti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_public_avertis/1 or /_mangas_public_avertis/1.json
  def destroy
    @_mangas_public_averti.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_public_avertis_url, notice: "Mangas public averti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_public_averti
      @_mangas_public_averti = MangasPublicAverti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_public_averti_params
      params.require(:_mangas_public_averti).permit(:name)
    end
end
