class CdsLnsController < ApplicationController
  before_action :set__cds_ln, only: %i[ show edit update destroy ]

  # GET /_cds_lns or /_cds_lns.json
  def index
    @_cds_lns = CdsLn.all
  end

  # GET /_cds_lns/1 or /_cds_lns/1.json
  def show
  end

  # GET /_cds_lns/new
  def new
    @_cds_ln = CdsLn.new
  end

  # GET /_cds_lns/1/edit
  def edit
  end

  # POST /_cds_lns or /_cds_lns.json
  def create
    @_cds_ln = CdsLn.new(_cds_ln_params)

    respond_to do |format|
      if @_cds_ln.save
        format.html { redirect_to _cds_ln_url(@_cds_ln), notice: "Cds ln was successfully created." }
        format.json { render :show, status: :created, location: @_cds_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_lns/1 or /_cds_lns/1.json
  def update
    respond_to do |format|
      if @_cds_ln.update(_cds_ln_params)
        format.html { redirect_to _cds_ln_url(@_cds_ln), notice: "Cds ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_lns/1 or /_cds_lns/1.json
  def destroy
    @_cds_ln.destroy!

    respond_to do |format|
      format.html { redirect_to _cds_lns_url, notice: "Cds ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_ln
      @_cds_ln = CdsLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_ln_params
      params.require(:_cds_ln).permit(:name)
    end
end
