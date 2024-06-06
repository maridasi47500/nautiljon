class DoujinshisDoujinshisController < ApplicationController
  before_action :set__doujinshis_doujinshi, only: %i[ show edit update destroy ]

  # GET /_doujinshis_doujinshis or /_doujinshis_doujinshis.json
  def index
    @_doujinshis_doujinshis = DoujinshisDoujinshi.all
  end

  # GET /_doujinshis_doujinshis/1 or /_doujinshis_doujinshis/1.json
  def show
  end

  # GET /_doujinshis_doujinshis/new
  def new
    @_doujinshis_doujinshi = DoujinshisDoujinshi.new
  end

  # GET /_doujinshis_doujinshis/1/edit
  def edit
  end

  # POST /_doujinshis_doujinshis or /_doujinshis_doujinshis.json
  def create
    @_doujinshis_doujinshi = DoujinshisDoujinshi.new(_doujinshis_doujinshi_params)

    respond_to do |format|
      if @_doujinshis_doujinshi.save
        format.html { redirect_to doujinshis_doujinshi_url(@_doujinshis_doujinshi), notice: "Doujinshis doujinshi was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_doujinshi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_doujinshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_doujinshis/1 or /_doujinshis_doujinshis/1.json
  def update
    respond_to do |format|
      if @_doujinshis_doujinshi.update(_doujinshis_doujinshi_params)
        format.html { redirect_to doujinshis_doujinshi_url(@_doujinshis_doujinshi), notice: "Doujinshis doujinshi was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_doujinshi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_doujinshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_doujinshis/1 or /_doujinshis_doujinshis/1.json
  def destroy
    @_doujinshis_doujinshi.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_doujinshis_url, notice: "Doujinshis doujinshi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_doujinshi
      @_doujinshis_doujinshi = DoujinshisDoujinshi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_doujinshi_params
      params.require(:doujinshis_doujinshi).permit(:name)
    end
end
