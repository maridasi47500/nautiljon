class LivresPublicAvertisController < ApplicationController
  before_action :set__livres_public_averti, only: %i[ show edit update destroy ]

  # GET /_livres_public_avertis or /_livres_public_avertis.json
  def index
    @_livres_public_avertis = LivresPublicAverti.all
  end

  # GET /_livres_public_avertis/1 or /_livres_public_avertis/1.json
  def show
  end

  # GET /_livres_public_avertis/new
  def new
    @_livres_public_averti = LivresPublicAverti.new
  end

  # GET /_livres_public_avertis/1/edit
  def edit
  end

  # POST /_livres_public_avertis or /_livres_public_avertis.json
  def create
    @_livres_public_averti = LivresPublicAverti.new(_livres_public_averti_params)

    respond_to do |format|
      if @_livres_public_averti.save
        format.html { redirect_to livres_public_averti_url(@_livres_public_averti), notice: "Livres public averti was successfully created." }
        format.json { render :show, status: :created, location: @_livres_public_averti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_public_avertis/1 or /_livres_public_avertis/1.json
  def update
    respond_to do |format|
      if @_livres_public_averti.update(_livres_public_averti_params)
        format.html { redirect_to livres_public_averti_url(@_livres_public_averti), notice: "Livres public averti was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_public_averti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_public_avertis/1 or /_livres_public_avertis/1.json
  def destroy
    @_livres_public_averti.destroy!

    respond_to do |format|
      format.html { redirect_to livres_public_avertis_url, notice: "Livres public averti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_public_averti
      @_livres_public_averti = LivresPublicAverti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_public_averti_params
      params.require(:livres_public_averti).permit(:name)
    end
end
