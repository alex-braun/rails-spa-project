class BeatsController < ApplicationController
  before_action :set_beat, only: [:show, :update, :destroy]

  # GET /beats
  # GET /beats.json
  def index
    # @beats = Beat.all
    @beats = Pattern.find(params[:pattern_id]).beats

    render json: @beats
  end

  # GET /beats/1
  # GET /beats/1.json
  def show
    render json: @beat
  end

  # POST /beats
  # POST /beats.json
  def create
    @beats = current_user.beats.build(beat_params)

    if @beat.save
      render json: @beat, status: :created, location: @beat
    else
      render json: @beat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beats/1
  # PATCH/PUT /beats/1.json
  def update
    @beat = Beat.find(params[:id])

    if @beat.update(beat_params)
      head :no_content
    else
      render json: @beat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beats/1
  # DELETE /beats/1.json
  def destroy
    @beat.destroy

    head :no_content
  end

  private

    def set_beat
      @beat = Beat.find(params[:id])
    end

    def beat_params
      params.require(:beat).permit(:kick, :snare, :hatClose, :hatOpen, :clap, :pattern_id)
    end
end
