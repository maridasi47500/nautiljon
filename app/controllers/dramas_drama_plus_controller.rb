class DramasDramaPlusController < ApplicationController
  before_action :set__dramas_drama_plu, only: %i[ show edit update destroy ]

  # GET /_dramas_drama_plus or /_dramas_drama_plus.json
  def index
    @_dramas_drama_plus = DramasDramaPlu.all
  end

  # GET /_dramas_drama_plus/1 or /_dramas_drama_plus/1.json
  def show
  end

  # GET /_dramas_drama_plus/new
  def new
    @_dramas_drama_plu = DramasDramaPlu.new
  end

  # GET /_dramas_drama_plus/1/edit
  def edit
  end

  # POST /_dramas_drama_plus or /_dramas_drama_plus.json
  def create
    @_dramas_drama_plu = DramasDramaPlu.new(_dramas_drama_plu_params)

    respond_to do |format|
      if @_dramas_drama_plu.save
        format.html { redirect_to dramas_drama_plu_url(@_dramas_drama_plu), notice: "Dramas drama plu was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_drama_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_drama_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_drama_plus/1 or /_dramas_drama_plus/1.json
  def update
    respond_to do |format|
      if @_dramas_drama_plu.update(_dramas_drama_plu_params)
        format.html { redirect_to dramas_drama_plu_url(@_dramas_drama_plu), notice: "Dramas drama plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_drama_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_drama_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_drama_plus/1 or /_dramas_drama_plus/1.json
  def destroy
    @_dramas_drama_plu.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_drama_plus_url, notice: "Dramas drama plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_drama_plu
      @_dramas_drama_plu = DramasDramaPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_drama_plu_params
      params.require(:dramas_drama_plu).permit(:name)
    end
end
