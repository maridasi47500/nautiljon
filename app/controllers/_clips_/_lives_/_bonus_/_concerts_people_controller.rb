class Clips::Lives::Bonus::ConcertsPeopleController < ApplicationController
  before_action :set__clips___lives___bonus___concerts_person, only: %i[ show edit update destroy ]

  # GET /_clips_/_lives_/_bonus_/_concerts_people or /_clips_/_lives_/_bonus_/_concerts_people.json
  def index
    @_clips___lives___bonus___concerts_people = Clips::Lives::Bonus::ConcertsPerson.all
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_people/1 or /_clips_/_lives_/_bonus_/_concerts_people/1.json
  def show
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_people/new
  def new
    @_clips___lives___bonus___concerts_person = Clips::Lives::Bonus::ConcertsPerson.new
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_people/1/edit
  def edit
  end

  # POST /_clips_/_lives_/_bonus_/_concerts_people or /_clips_/_lives_/_bonus_/_concerts_people.json
  def create
    @_clips___lives___bonus___concerts_person = Clips::Lives::Bonus::ConcertsPerson.new(_clips___lives___bonus___concerts_person_params)

    respond_to do |format|
      if @_clips___lives___bonus___concerts_person.save
        format.html { redirect_to _clips___lives___bonus___concerts_person_url(@_clips___lives___bonus___concerts_person), notice: "Concerts person was successfully created." }
        format.json { render :show, status: :created, location: @_clips___lives___bonus___concerts_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concerts_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_clips_/_lives_/_bonus_/_concerts_people/1 or /_clips_/_lives_/_bonus_/_concerts_people/1.json
  def update
    respond_to do |format|
      if @_clips___lives___bonus___concerts_person.update(_clips___lives___bonus___concerts_person_params)
        format.html { redirect_to _clips___lives___bonus___concerts_person_url(@_clips___lives___bonus___concerts_person), notice: "Concerts person was successfully updated." }
        format.json { render :show, status: :ok, location: @_clips___lives___bonus___concerts_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concerts_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_clips_/_lives_/_bonus_/_concerts_people/1 or /_clips_/_lives_/_bonus_/_concerts_people/1.json
  def destroy
    @_clips___lives___bonus___concerts_person.destroy!

    respond_to do |format|
      format.html { redirect_to _clips___lives___bonus___concerts_people_url, notice: "Concerts person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__clips___lives___bonus___concerts_person
      @_clips___lives___bonus___concerts_person = Clips::Lives::Bonus::ConcertsPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _clips___lives___bonus___concerts_person_params
      params.require(:_clips___lives___bonus___concerts_person).permit(:name)
    end
end
