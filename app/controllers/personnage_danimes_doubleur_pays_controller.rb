class PersonnageDanimesDoubleurPaysController < ApplicationController
  before_action :set__personnage_danimes_doubleur_pay, only: %i[ show edit update destroy ]

  # GET /_personnage_danimes_doubleur_pays or /_personnage_danimes_doubleur_pays.json
  def index
    @_personnage_danimes_doubleur_pays = PersonnageDanimesDoubleurPay.all
  end

  # GET /_personnage_danimes_doubleur_pays/1 or /_personnage_danimes_doubleur_pays/1.json
  def show
  end

  # GET /_personnage_danimes_doubleur_pays/new
  def new
    @_personnage_danimes_doubleur_pay = PersonnageDanimesDoubleurPay.new
  end

  # GET /_personnage_danimes_doubleur_pays/1/edit
  def edit
  end

  # POST /_personnage_danimes_doubleur_pays or /_personnage_danimes_doubleur_pays.json
  def create
    @_personnage_danimes_doubleur_pay = PersonnageDanimesDoubleurPay.new(_personnage_danimes_doubleur_pay_params)

    respond_to do |format|
      if @_personnage_danimes_doubleur_pay.save
        format.html { redirect_to personnage_danimes_doubleur_pay_url(@_personnage_danimes_doubleur_pay), notice: "Personnage danimes doubleur pay was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_danimes_doubleur_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_doubleur_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_danimes_doubleur_pays/1 or /_personnage_danimes_doubleur_pays/1.json
  def update
    respond_to do |format|
      if @_personnage_danimes_doubleur_pay.update(_personnage_danimes_doubleur_pay_params)
        format.html { redirect_to personnage_danimes_doubleur_pay_url(@_personnage_danimes_doubleur_pay), notice: "Personnage danimes doubleur pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_danimes_doubleur_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_doubleur_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_danimes_doubleur_pays/1 or /_personnage_danimes_doubleur_pays/1.json
  def destroy
    @_personnage_danimes_doubleur_pay.destroy!

    respond_to do |format|
      format.html { redirect_to personnage_danimes_doubleur_pays_url, notice: "Personnage danimes doubleur pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_danimes_doubleur_pay
      @_personnage_danimes_doubleur_pay = PersonnageDanimesDoubleurPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_danimes_doubleur_pay_params
      params.require(:personnage_danimes_doubleur_pay).permit(:name)
    end
end
