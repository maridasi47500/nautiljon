class MangasPaysController < ApplicationController
  before_action :set__mangas_pay, only: %i[ show edit update destroy ]

  # GET /_mangas_pays or /_mangas_pays.json
  def index
    @_mangas_pays = MangasPay.all
  end

  # GET /_mangas_pays/1 or /_mangas_pays/1.json
  def show
  end

  # GET /_mangas_pays/new
  def new
    @_mangas_pay = MangasPay.new
  end

  # GET /_mangas_pays/1/edit
  def edit
  end

  # POST /_mangas_pays or /_mangas_pays.json
  def create
    @_mangas_pay = MangasPay.new(_mangas_pay_params)

    respond_to do |format|
      if @_mangas_pay.save
        format.html { redirect_to _mangas_pay_url(@_mangas_pay), notice: "Mangas pay was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_pays/1 or /_mangas_pays/1.json
  def update
    respond_to do |format|
      if @_mangas_pay.update(_mangas_pay_params)
        format.html { redirect_to _mangas_pay_url(@_mangas_pay), notice: "Mangas pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_pays/1 or /_mangas_pays/1.json
  def destroy
    @_mangas_pay.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_pays_url, notice: "Mangas pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_pay
      @_mangas_pay = MangasPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_pay_params
      params.require(:_mangas_pay).permit(:name)
    end
end
