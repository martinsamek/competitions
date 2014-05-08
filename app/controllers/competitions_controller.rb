class CompetitionsController < ApplicationController
  before_action :set_competition, only: [:show, :edit, :update, :destroy]


  def sign_in_form
    competition = Competition.find(params[:id])
    @competition_assignment = CompetitionAssignment.new user: current_user,
                                                          competition: competition

  end

  def sign_in
    @competition_assignment = CompetitionAssignment.new
    @competition_assignment.user = current_user
    @competition_assignment.school_id = params[:competition_assignment][:school_id]
    @competition_assignment.user_grade = params[:competition_assignment][:user_grade]
    @competition_assignment.teacher_name = params[:competition_assignment][:teacher_name]
    @competition_assignment.competition_id = params[:id]
    if @competition_assignment.save
      redirect_to Competition.find(params[:id]), notice: "Uspesne ste sa prihlasili do sutaze"
    else
      render action: :sign_in_form
    end

  end
  # GET /competitions
  # GET /competitions.json
  def index
    @competitions = Competition.all
  end

  def maintenance
    @competitions = current_user.maintaining_competitions
    render action: :index
  end

  # GET /competitions/1
  # GET /competitions/1.json
  def show
  end

  # GET /competitions/new
  def new
    @competition = Competition.new
  end

  # GET /competitions/1/edit
  def edit
  end

  # POST /competitions
  # POST /competitions.json
  def create
    @competition = Competition.new(competition_params)

    respond_to do |format|
      if @competition.save
        @competition.maintainers << current_user
        format.html { redirect_to @competition, notice: 'Competition was successfully created.' }
        format.json { render action: 'show', status: :created, location: @competition }
      else
        format.html { render action: 'new' }
        format.json { render json: @competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competitions/1
  # PATCH/PUT /competitions/1.json
  def update
    respond_to do |format|
      if @competition.update(competition_params)
        format.html { redirect_to @competition, notice: 'Competition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competitions/1
  # DELETE /competitions/1.json
  def destroy
    @competition.destroy
    respond_to do |format|
      format.html { redirect_to competitions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competition
      @competition = Competition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competition_params
      params.require(:competition).permit(:name)
    end
end
