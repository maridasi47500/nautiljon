class GoodiesPublicAvertisController < ApplicationController
  before_action :set__goodies_public_averti, only: %i[ show edit update destroy ]

  # GET /_goodies_public_avertis or /_goodies_public_avertis.json
  def index
    @_goodies_public_avertis = GoodiesPublicAverti.all
  end

  # GET /_goodies_public_avertis/1 or /_goodies_public_avertis/1.json
  def show
  end

  # GET /_goodies_public_avertis/new
  def new
    @_goodies_public_averti = GoodiesPublicAverti.new
  end

  # GET /_goodies_public_avertis/1/edit
  def edit
  end

  # POST /_goodies_public_avertis or /_goodies_public_avertis.json
  def create
    @_goodies_public_averti = GoodiesPublicAverti.new(_goodies_public_averti_params)

    respond_to do |format|
      if @_goodies_public_averti.save
        format.html { redirect_to goodies_public_averti_url(@_goodies_public_averti), notice: "Goodies public averti was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_public_averti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_public_avertis/1 or /_goodies_public_avertis/1.json
  def update
    respond_to do |format|
      if @_goodies_public_averti.update(_goodies_public_averti_params)
        format.html { redirect_to goodies_public_averti_url(@_goodies_public_averti), notice: "Goodies public averti was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_public_averti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_public_avertis/1 or /_goodies_public_avertis/1.json
  def destroy
    @_goodies_public_averti.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_public_avertis_url, notice: "Goodies public averti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_public_averti
      @_goodies_public_averti = GoodiesPublicAverti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_public_averti_params
      params.require(:goodies_public_averti).permit(:name)
    end
end
