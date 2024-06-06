class DoujinshisAmsController < ApplicationController
  before_action :set__doujinshis_am, only: %i[ show edit update destroy ]

  # GET /_doujinshis_ams or /_doujinshis_ams.json
  def index
    @_doujinshis_ams = DoujinshisAm.all
  end

  # GET /_doujinshis_ams/1 or /_doujinshis_ams/1.json
  def show
  end

  # GET /_doujinshis_ams/new
  def new
    @_doujinshis_am = DoujinshisAm.new
  end

  # GET /_doujinshis_ams/1/edit
  def edit
  end

  # POST /_doujinshis_ams or /_doujinshis_ams.json
  def create
    @_doujinshis_am = DoujinshisAm.new(_doujinshis_am_params)

    respond_to do |format|
      if @_doujinshis_am.save
        format.html { redirect_to _doujinshis_am_url(@_doujinshis_am), notice: "Doujinshis am was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_ams/1 or /_doujinshis_ams/1.json
  def update
    respond_to do |format|
      if @_doujinshis_am.update(_doujinshis_am_params)
        format.html { redirect_to _doujinshis_am_url(@_doujinshis_am), notice: "Doujinshis am was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_ams/1 or /_doujinshis_ams/1.json
  def destroy
    @_doujinshis_am.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_ams_url, notice: "Doujinshis am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_am
      @_doujinshis_am = DoujinshisAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_am_params
      params.require(:_doujinshis_am).permit(:name)
    end
end
