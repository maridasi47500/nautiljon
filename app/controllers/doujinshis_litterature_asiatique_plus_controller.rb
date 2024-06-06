class DoujinshisLitteratureAsiatiquePlusController < ApplicationController
  before_action :set__doujinshis_litterature_asiatique_plu, only: %i[ show edit update destroy ]

  # GET /_doujinshis_litterature_asiatique_plus or /_doujinshis_litterature_asiatique_plus.json
  def index
    @_doujinshis_litterature_asiatique_plus = DoujinshisLitteratureAsiatiquePlu.all
  end

  # GET /_doujinshis_litterature_asiatique_plus/1 or /_doujinshis_litterature_asiatique_plus/1.json
  def show
  end

  # GET /_doujinshis_litterature_asiatique_plus/new
  def new
    @_doujinshis_litterature_asiatique_plu = DoujinshisLitteratureAsiatiquePlu.new
  end

  # GET /_doujinshis_litterature_asiatique_plus/1/edit
  def edit
  end

  # POST /_doujinshis_litterature_asiatique_plus or /_doujinshis_litterature_asiatique_plus.json
  def create
    @_doujinshis_litterature_asiatique_plu = DoujinshisLitteratureAsiatiquePlu.new(_doujinshis_litterature_asiatique_plu_params)

    respond_to do |format|
      if @_doujinshis_litterature_asiatique_plu.save
        format.html { redirect_to doujinshis_litterature_asiatique_plu_url(@_doujinshis_litterature_asiatique_plu), notice: "Doujinshis litterature asiatique plu was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_litterature_asiatique_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_litterature_asiatique_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_litterature_asiatique_plus/1 or /_doujinshis_litterature_asiatique_plus/1.json
  def update
    respond_to do |format|
      if @_doujinshis_litterature_asiatique_plu.update(_doujinshis_litterature_asiatique_plu_params)
        format.html { redirect_to doujinshis_litterature_asiatique_plu_url(@_doujinshis_litterature_asiatique_plu), notice: "Doujinshis litterature asiatique plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_litterature_asiatique_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_litterature_asiatique_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_litterature_asiatique_plus/1 or /_doujinshis_litterature_asiatique_plus/1.json
  def destroy
    @_doujinshis_litterature_asiatique_plu.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_litterature_asiatique_plus_url, notice: "Doujinshis litterature asiatique plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_litterature_asiatique_plu
      @_doujinshis_litterature_asiatique_plu = DoujinshisLitteratureAsiatiquePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_litterature_asiatique_plu_params
      params.require(:doujinshis_litterature_asiatique_plu).permit(:name)
    end
end
