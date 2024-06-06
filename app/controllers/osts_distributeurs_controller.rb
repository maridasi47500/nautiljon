class OstsDistributeursController < ApplicationController
  before_action :set_osts_distributeur, only: %i[ show edit update destroy ]

  # GET /osts_distributeurs or /osts_distributeurs.json
  def index
    @osts_distributeurs = OstsDistributeur.all
  end

  # GET /osts_distributeurs/1 or /osts_distributeurs/1.json
  def show
  end

  # GET /osts_distributeurs/new
  def new
    @osts_distributeur = OstsDistributeur.new
  end

  # GET /osts_distributeurs/1/edit
  def edit
  end

  # POST /osts_distributeurs or /osts_distributeurs.json
  def create
    @osts_distributeur = OstsDistributeur.new(osts_distributeur_params)

    respond_to do |format|
      if @osts_distributeur.save
        format.html { redirect_to osts_distributeur_url(@osts_distributeur), notice: "Osts distributeur was successfully created." }
        format.json { render :show, status: :created, location: @osts_distributeur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_distributeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_distributeurs/1 or /osts_distributeurs/1.json
  def update
    respond_to do |format|
      if @osts_distributeur.update(osts_distributeur_params)
        format.html { redirect_to osts_distributeur_url(@osts_distributeur), notice: "Osts distributeur was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_distributeur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_distributeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_distributeurs/1 or /osts_distributeurs/1.json
  def destroy
    @osts_distributeur.destroy!

    respond_to do |format|
      format.html { redirect_to osts_distributeurs_url, notice: "Osts distributeur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_distributeur
      @osts_distributeur = OstsDistributeur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_distributeur_params
      params.require(:osts_distributeur).permit(:name)
    end
end
