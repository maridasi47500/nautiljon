class MangasCommercesController < ApplicationController
  before_action :set__mangas_commerce, only: %i[ show edit update destroy ]

  # GET /_mangas_commerces or /_mangas_commerces.json
  def index
    @_mangas_commerces = MangasCommerce.all
  end

  # GET /_mangas_commerces/1 or /_mangas_commerces/1.json
  def show
  end

  # GET /_mangas_commerces/new
  def new
    @_mangas_commerce = MangasCommerce.new
  end

  # GET /_mangas_commerces/1/edit
  def edit
  end

  # POST /_mangas_commerces or /_mangas_commerces.json
  def create
    @_mangas_commerce = MangasCommerce.new(_mangas_commerce_params)

    respond_to do |format|
      if @_mangas_commerce.save
        format.html { redirect_to _mangas_commerce_url(@_mangas_commerce), notice: "Mangas commerce was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_commerce }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_commerce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_commerces/1 or /_mangas_commerces/1.json
  def update
    respond_to do |format|
      if @_mangas_commerce.update(_mangas_commerce_params)
        format.html { redirect_to _mangas_commerce_url(@_mangas_commerce), notice: "Mangas commerce was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_commerce }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_commerce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_commerces/1 or /_mangas_commerces/1.json
  def destroy
    @_mangas_commerce.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_commerces_url, notice: "Mangas commerce was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_commerce
      @_mangas_commerce = MangasCommerce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_commerce_params
      params.require(:_mangas_commerce).permit(:name)
    end
end
