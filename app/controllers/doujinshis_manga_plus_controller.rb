class DoujinshisMangaPlusController < ApplicationController
  before_action :set__doujinshis_manga_plu, only: %i[ show edit update destroy ]

  # GET /_doujinshis_manga_plus or /_doujinshis_manga_plus.json
  def index
    @_doujinshis_manga_plus = DoujinshisMangaPlu.all
  end

  # GET /_doujinshis_manga_plus/1 or /_doujinshis_manga_plus/1.json
  def show
  end

  # GET /_doujinshis_manga_plus/new
  def new
    @_doujinshis_manga_plu = DoujinshisMangaPlu.new
  end

  # GET /_doujinshis_manga_plus/1/edit
  def edit
  end

  # POST /_doujinshis_manga_plus or /_doujinshis_manga_plus.json
  def create
    @_doujinshis_manga_plu = DoujinshisMangaPlu.new(_doujinshis_manga_plu_params)

    respond_to do |format|
      if @_doujinshis_manga_plu.save
        format.html { redirect_to doujinshis_manga_plu_url(@_doujinshis_manga_plu), notice: "Doujinshis manga plu was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_manga_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_manga_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_manga_plus/1 or /_doujinshis_manga_plus/1.json
  def update
    respond_to do |format|
      if @_doujinshis_manga_plu.update(_doujinshis_manga_plu_params)
        format.html { redirect_to doujinshis_manga_plu_url(@_doujinshis_manga_plu), notice: "Doujinshis manga plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_manga_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_manga_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_manga_plus/1 or /_doujinshis_manga_plus/1.json
  def destroy
    @_doujinshis_manga_plu.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_manga_plus_url, notice: "Doujinshis manga plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_manga_plu
      @_doujinshis_manga_plu = DoujinshisMangaPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_manga_plu_params
      params.require(:doujinshis_manga_plu).permit(:name)
    end
end
