class PersonnalitesPaysController < ApplicationController
  before_action :set__personnalites_pay, only: %i[ show edit update destroy ]

  # GET /_personnalites_pays or /_personnalites_pays.json
  def index
    @_personnalites_pays = PersonnalitesPay.all
  end

  # GET /_personnalites_pays/1 or /_personnalites_pays/1.json
  def show
  end

  # GET /_personnalites_pays/new
  def new
    @_personnalites_pay = PersonnalitesPay.new
  end

  # GET /_personnalites_pays/1/edit
  def edit
  end

  # POST /_personnalites_pays or /_personnalites_pays.json
  def create
    @_personnalites_pay = PersonnalitesPay.new(_personnalites_pay_params)

    respond_to do |format|
      if @_personnalites_pay.save
        format.html { redirect_to personnalites_pay_url(@_personnalites_pay), notice: "Personnalites pay was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_pays/1 or /_personnalites_pays/1.json
  def update
    respond_to do |format|
      if @_personnalites_pay.update(_personnalites_pay_params)
        format.html { redirect_to personnalites_pay_url(@_personnalites_pay), notice: "Personnalites pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_pays/1 or /_personnalites_pays/1.json
  def destroy
    @_personnalites_pay.destroy!

    respond_to do |format|
      format.html { redirect_to personnalites_pays_url, notice: "Personnalites pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_pay
      @_personnalites_pay = PersonnalitesPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_pay_params
      params.require(:personnalites_pay).permit(:name)
    end
end
