class DoujinshisPublicAvertisController < ApplicationController
  before_action :set__doujinshis_public_averti, only: %i[ show edit update destroy ]

  # GET /_doujinshis_public_avertis or /_doujinshis_public_avertis.json
  def index
    @_doujinshis_public_avertis = DoujinshisPublicAverti.all
  end

  # GET /_doujinshis_public_avertis/1 or /_doujinshis_public_avertis/1.json
  def show
  end

  # GET /_doujinshis_public_avertis/new
  def new
    @_doujinshis_public_averti = DoujinshisPublicAverti.new
  end

  # GET /_doujinshis_public_avertis/1/edit
  def edit
  end

  # POST /_doujinshis_public_avertis or /_doujinshis_public_avertis.json
  def create
    @_doujinshis_public_averti = DoujinshisPublicAverti.new(_doujinshis_public_averti_params)

    respond_to do |format|
      if @_doujinshis_public_averti.save
        format.html { redirect_to _doujinshis_public_averti_url(@_doujinshis_public_averti), notice: "Doujinshis public averti was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_public_averti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_public_avertis/1 or /_doujinshis_public_avertis/1.json
  def update
    respond_to do |format|
      if @_doujinshis_public_averti.update(_doujinshis_public_averti_params)
        format.html { redirect_to _doujinshis_public_averti_url(@_doujinshis_public_averti), notice: "Doujinshis public averti was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_public_averti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_public_avertis/1 or /_doujinshis_public_avertis/1.json
  def destroy
    @_doujinshis_public_averti.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_public_avertis_url, notice: "Doujinshis public averti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_public_averti
      @_doujinshis_public_averti = DoujinshisPublicAverti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_public_averti_params
      params.require(:_doujinshis_public_averti).permit(:name)
    end
end
