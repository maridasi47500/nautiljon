class BoutiquesPaysController < ApplicationController
  before_action :set__boutiques_pay, only: %i[ show edit update destroy ]

  # GET /_boutiques_pays or /_boutiques_pays.json
  def index
    @_boutiques_pays = BoutiquesPay.all
  end

  # GET /_boutiques_pays/1 or /_boutiques_pays/1.json
  def show
  end

  # GET /_boutiques_pays/new
  def new
    @_boutiques_pay = BoutiquesPay.new
  end

  # GET /_boutiques_pays/1/edit
  def edit
  end

  # POST /_boutiques_pays or /_boutiques_pays.json
  def create
    @_boutiques_pay = BoutiquesPay.new(_boutiques_pay_params)

    respond_to do |format|
      if @_boutiques_pay.save
        format.html { redirect_to boutiques_pay_url(@_boutiques_pay), notice: "Boutiques pay was successfully created." }
        format.json { render :show, status: :created, location: @_boutiques_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_boutiques_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_boutiques_pays/1 or /_boutiques_pays/1.json
  def update
    respond_to do |format|
      if @_boutiques_pay.update(_boutiques_pay_params)
        format.html { redirect_to boutiques_pay_url(@_boutiques_pay), notice: "Boutiques pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_boutiques_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_boutiques_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_boutiques_pays/1 or /_boutiques_pays/1.json
  def destroy
    @_boutiques_pay.destroy!

    respond_to do |format|
      format.html { redirect_to boutiques_pays_url, notice: "Boutiques pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__boutiques_pay
      @_boutiques_pay = BoutiquesPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _boutiques_pay_params
      params.require(:boutiques_pay).permit(:name)
    end
end
