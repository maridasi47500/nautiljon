class LivresPaysController < ApplicationController
  before_action :set__livres_pay, only: %i[ show edit update destroy ]

  # GET /_livres_pays or /_livres_pays.json
  def index
    @_livres_pays = LivresPay.all
  end

  # GET /_livres_pays/1 or /_livres_pays/1.json
  def show
  end

  # GET /_livres_pays/new
  def new
    @_livres_pay = LivresPay.new
  end

  # GET /_livres_pays/1/edit
  def edit
  end

  # POST /_livres_pays or /_livres_pays.json
  def create
    @_livres_pay = LivresPay.new(_livres_pay_params)

    respond_to do |format|
      if @_livres_pay.save
        format.html { redirect_to _livres_pay_url(@_livres_pay), notice: "Livres pay was successfully created." }
        format.json { render :show, status: :created, location: @_livres_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_pays/1 or /_livres_pays/1.json
  def update
    respond_to do |format|
      if @_livres_pay.update(_livres_pay_params)
        format.html { redirect_to _livres_pay_url(@_livres_pay), notice: "Livres pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_pays/1 or /_livres_pays/1.json
  def destroy
    @_livres_pay.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_pays_url, notice: "Livres pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_pay
      @_livres_pay = LivresPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_pay_params
      params.require(:_livres_pay).permit(:name)
    end
end
