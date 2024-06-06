class PetitesAnnoncesPaysController < ApplicationController
  before_action :set__petites_annonces_pay, only: %i[ show edit update destroy ]

  # GET /_petites_annonces_pays or /_petites_annonces_pays.json
  def index
    @_petites_annonces_pays = PetitesAnnoncesPay.all
  end

  # GET /_petites_annonces_pays/1 or /_petites_annonces_pays/1.json
  def show
  end

  # GET /_petites_annonces_pays/new
  def new
    @_petites_annonces_pay = PetitesAnnoncesPay.new
  end

  # GET /_petites_annonces_pays/1/edit
  def edit
  end

  # POST /_petites_annonces_pays or /_petites_annonces_pays.json
  def create
    @_petites_annonces_pay = PetitesAnnoncesPay.new(_petites_annonces_pay_params)

    respond_to do |format|
      if @_petites_annonces_pay.save
        format.html { redirect_to _petites_annonces_pay_url(@_petites_annonces_pay), notice: "Petites annonces pay was successfully created." }
        format.json { render :show, status: :created, location: @_petites_annonces_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_petites_annonces_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_petites_annonces_pays/1 or /_petites_annonces_pays/1.json
  def update
    respond_to do |format|
      if @_petites_annonces_pay.update(_petites_annonces_pay_params)
        format.html { redirect_to _petites_annonces_pay_url(@_petites_annonces_pay), notice: "Petites annonces pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_petites_annonces_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_petites_annonces_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_petites_annonces_pays/1 or /_petites_annonces_pays/1.json
  def destroy
    @_petites_annonces_pay.destroy!

    respond_to do |format|
      format.html { redirect_to _petites_annonces_pays_url, notice: "Petites annonces pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__petites_annonces_pay
      @_petites_annonces_pay = PetitesAnnoncesPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _petites_annonces_pay_params
      params.require(:_petites_annonces_pay).permit(:name)
    end
end
