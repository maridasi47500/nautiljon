class DoujinsAmsController < ApplicationController
  before_action :set__doujins_am, only: %i[ show edit update destroy ]

  # GET /_doujins_ams or /_doujins_ams.json
  def index
    @_doujins_ams = DoujinsAm.all
  end

  # GET /_doujins_ams/1 or /_doujins_ams/1.json
  def show
  end

  # GET /_doujins_ams/new
  def new
    @_doujins_am = DoujinsAm.new
  end

  # GET /_doujins_ams/1/edit
  def edit
  end

  # POST /_doujins_ams or /_doujins_ams.json
  def create
    @_doujins_am = DoujinsAm.new(_doujins_am_params)

    respond_to do |format|
      if @_doujins_am.save
        format.html { redirect_to doujins_am_url(@_doujins_am), notice: "Doujins am was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_ams/1 or /_doujins_ams/1.json
  def update
    respond_to do |format|
      if @_doujins_am.update(_doujins_am_params)
        format.html { redirect_to doujins_am_url(@_doujins_am), notice: "Doujins am was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_ams/1 or /_doujins_ams/1.json
  def destroy
    @_doujins_am.destroy!

    respond_to do |format|
      format.html { redirect_to doujins_ams_url, notice: "Doujins am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_am
      @_doujins_am = DoujinsAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_am_params
      params.require(:doujins_am).permit(:name)
    end
end
