class PersonnalitesLabelsExesController < ApplicationController
  before_action :set__personnalites_labels_ex, only: %i[ show edit update destroy ]

  # GET /_personnalites_labels_exes or /_personnalites_labels_exes.json
  def index
    @_personnalites_labels_exes = PersonnalitesLabelsEx.all
  end

  # GET /_personnalites_labels_exes/1 or /_personnalites_labels_exes/1.json
  def show
  end

  # GET /_personnalites_labels_exes/new
  def new
    @_personnalites_labels_ex = PersonnalitesLabelsEx.new
  end

  # GET /_personnalites_labels_exes/1/edit
  def edit
  end

  # POST /_personnalites_labels_exes or /_personnalites_labels_exes.json
  def create
    @_personnalites_labels_ex = PersonnalitesLabelsEx.new(_personnalites_labels_ex_params)

    respond_to do |format|
      if @_personnalites_labels_ex.save
        format.html { redirect_to _personnalites_labels_ex_url(@_personnalites_labels_ex), notice: "Personnalites labels ex was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_labels_ex }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_labels_ex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_labels_exes/1 or /_personnalites_labels_exes/1.json
  def update
    respond_to do |format|
      if @_personnalites_labels_ex.update(_personnalites_labels_ex_params)
        format.html { redirect_to _personnalites_labels_ex_url(@_personnalites_labels_ex), notice: "Personnalites labels ex was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_labels_ex }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_labels_ex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_labels_exes/1 or /_personnalites_labels_exes/1.json
  def destroy
    @_personnalites_labels_ex.destroy!

    respond_to do |format|
      format.html { redirect_to _personnalites_labels_exes_url, notice: "Personnalites labels ex was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_labels_ex
      @_personnalites_labels_ex = PersonnalitesLabelsEx.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_labels_ex_params
      params.require(:_personnalites_labels_ex).permit(:name)
    end
end
