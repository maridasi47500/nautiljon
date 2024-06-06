class PhotobooksPaysController < ApplicationController
  before_action :set__photobooks_pay, only: %i[ show edit update destroy ]

  # GET /_photobooks_pays or /_photobooks_pays.json
  def index
    @_photobooks_pays = PhotobooksPay.all
  end

  # GET /_photobooks_pays/1 or /_photobooks_pays/1.json
  def show
  end

  # GET /_photobooks_pays/new
  def new
    @_photobooks_pay = PhotobooksPay.new
  end

  # GET /_photobooks_pays/1/edit
  def edit
  end

  # POST /_photobooks_pays or /_photobooks_pays.json
  def create
    @_photobooks_pay = PhotobooksPay.new(_photobooks_pay_params)

    respond_to do |format|
      if @_photobooks_pay.save
        format.html { redirect_to _photobooks_pay_url(@_photobooks_pay), notice: "Photobooks pay was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_pays/1 or /_photobooks_pays/1.json
  def update
    respond_to do |format|
      if @_photobooks_pay.update(_photobooks_pay_params)
        format.html { redirect_to _photobooks_pay_url(@_photobooks_pay), notice: "Photobooks pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_pays/1 or /_photobooks_pays/1.json
  def destroy
    @_photobooks_pay.destroy!

    respond_to do |format|
      format.html { redirect_to _photobooks_pays_url, notice: "Photobooks pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_pay
      @_photobooks_pay = PhotobooksPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_pay_params
      params.require(:_photobooks_pay).permit(:name)
    end
end
