class DoujinsDoujinsController < ApplicationController
  before_action :set__doujins_doujin, only: %i[ show edit update destroy ]

  # GET /_doujins_doujins or /_doujins_doujins.json
  def index
    @_doujins_doujins = DoujinsDoujin.all
  end

  # GET /_doujins_doujins/1 or /_doujins_doujins/1.json
  def show
  end

  # GET /_doujins_doujins/new
  def new
    @_doujins_doujin = DoujinsDoujin.new
  end

  # GET /_doujins_doujins/1/edit
  def edit
  end

  # POST /_doujins_doujins or /_doujins_doujins.json
  def create
    @_doujins_doujin = DoujinsDoujin.new(_doujins_doujin_params)

    respond_to do |format|
      if @_doujins_doujin.save
        format.html { redirect_to doujins_doujin_url(@_doujins_doujin), notice: "Doujins doujin was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_doujin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_doujins/1 or /_doujins_doujins/1.json
  def update
    respond_to do |format|
      if @_doujins_doujin.update(_doujins_doujin_params)
        format.html { redirect_to doujins_doujin_url(@_doujins_doujin), notice: "Doujins doujin was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_doujin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_doujins/1 or /_doujins_doujins/1.json
  def destroy
    @_doujins_doujin.destroy!

    respond_to do |format|
      format.html { redirect_to doujins_doujins_url, notice: "Doujins doujin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_doujin
      @_doujins_doujin = DoujinsDoujin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_doujin_params
      params.require(:doujins_doujin).permit(:name)
    end
end
