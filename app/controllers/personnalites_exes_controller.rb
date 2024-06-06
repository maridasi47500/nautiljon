class PersonnalitesExesController < ApplicationController
  before_action :set__personnalites_ex, only: %i[ show edit update destroy ]

  # GET /_personnalites_exes or /_personnalites_exes.json
  def index
    @_personnalites_exes = PersonnalitesEx.all
  end

  # GET /_personnalites_exes/1 or /_personnalites_exes/1.json
  def show
  end

  # GET /_personnalites_exes/new
  def new
    @_personnalites_ex = PersonnalitesEx.new
  end

  # GET /_personnalites_exes/1/edit
  def edit
  end

  # POST /_personnalites_exes or /_personnalites_exes.json
  def create
    @_personnalites_ex = PersonnalitesEx.new(_personnalites_ex_params)

    respond_to do |format|
      if @_personnalites_ex.save
        format.html { redirect_to personnalites_ex_url(@_personnalites_ex), notice: "Personnalites ex was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_ex }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_ex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_exes/1 or /_personnalites_exes/1.json
  def update
    respond_to do |format|
      if @_personnalites_ex.update(_personnalites_ex_params)
        format.html { redirect_to personnalites_ex_url(@_personnalites_ex), notice: "Personnalites ex was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_ex }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_ex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_exes/1 or /_personnalites_exes/1.json
  def destroy
    @_personnalites_ex.destroy!

    respond_to do |format|
      format.html { redirect_to personnalites_exes_url, notice: "Personnalites ex was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_ex
      @_personnalites_ex = PersonnalitesEx.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_ex_params
      params.require(:personnalites_ex).permit(:name)
    end
end
