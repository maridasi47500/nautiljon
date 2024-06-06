class DramasMangaPlusController < ApplicationController
  before_action :set__dramas_manga_plu, only: %i[ show edit update destroy ]

  # GET /_dramas_manga_plus or /_dramas_manga_plus.json
  def index
    @_dramas_manga_plus = DramasMangaPlu.all
  end

  # GET /_dramas_manga_plus/1 or /_dramas_manga_plus/1.json
  def show
  end

  # GET /_dramas_manga_plus/new
  def new
    @_dramas_manga_plu = DramasMangaPlu.new
  end

  # GET /_dramas_manga_plus/1/edit
  def edit
  end

  # POST /_dramas_manga_plus or /_dramas_manga_plus.json
  def create
    @_dramas_manga_plu = DramasMangaPlu.new(_dramas_manga_plu_params)

    respond_to do |format|
      if @_dramas_manga_plu.save
        format.html { redirect_to _dramas_manga_plu_url(@_dramas_manga_plu), notice: "Dramas manga plu was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_manga_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_manga_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_manga_plus/1 or /_dramas_manga_plus/1.json
  def update
    respond_to do |format|
      if @_dramas_manga_plu.update(_dramas_manga_plu_params)
        format.html { redirect_to _dramas_manga_plu_url(@_dramas_manga_plu), notice: "Dramas manga plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_manga_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_manga_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_manga_plus/1 or /_dramas_manga_plus/1.json
  def destroy
    @_dramas_manga_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_manga_plus_url, notice: "Dramas manga plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_manga_plu
      @_dramas_manga_plu = DramasMangaPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_manga_plu_params
      params.require(:_dramas_manga_plu).permit(:name)
    end
end
