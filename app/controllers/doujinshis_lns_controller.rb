class DoujinshisLnsController < ApplicationController
  before_action :set__doujinshis_ln, only: %i[ show edit update destroy ]

  # GET /_doujinshis_lns or /_doujinshis_lns.json
  def index
    @_doujinshis_lns = DoujinshisLn.all
  end

  # GET /_doujinshis_lns/1 or /_doujinshis_lns/1.json
  def show
  end

  # GET /_doujinshis_lns/new
  def new
    @_doujinshis_ln = DoujinshisLn.new
  end

  # GET /_doujinshis_lns/1/edit
  def edit
  end

  # POST /_doujinshis_lns or /_doujinshis_lns.json
  def create
    @_doujinshis_ln = DoujinshisLn.new(_doujinshis_ln_params)

    respond_to do |format|
      if @_doujinshis_ln.save
        format.html { redirect_to doujinshis_ln_url(@_doujinshis_ln), notice: "Doujinshis ln was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_lns/1 or /_doujinshis_lns/1.json
  def update
    respond_to do |format|
      if @_doujinshis_ln.update(_doujinshis_ln_params)
        format.html { redirect_to doujinshis_ln_url(@_doujinshis_ln), notice: "Doujinshis ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_lns/1 or /_doujinshis_lns/1.json
  def destroy
    @_doujinshis_ln.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_lns_url, notice: "Doujinshis ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_ln
      @_doujinshis_ln = DoujinshisLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_ln_params
      params.require(:doujinshis_ln).permit(:name)
    end
end
