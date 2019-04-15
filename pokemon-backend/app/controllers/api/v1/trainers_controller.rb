class Api::V1::TrainersController < ApplicationController

  def index
    @trainers = Trainer.all
    render json: @trainers
  end

  def show
    @trainer = Trainer.find(trainer_params)
  end

  def new
    @trainer = new Trainer()
  end

  def create
    puts trainer_params
    @trainer = Trainer.create(trainer_params)
    if @trainer.valid?
      render json: @trainer
    end
  end

  def edit
    @trainer = Trainer.find_by(params[:id])

  end

  def update
    @trainer = Trainer.find_by(params[:id])
    @trainer.update(trainer_params)
    # if @trainer.valid?
    #
    # else
    #   #error
    #
    # end
  end

  def find
    @trainer = Trainer.find_by(name: params[:name])
    if @trainer.valid?
      render json: @trainer
    else

    end
  end

  private

  def trainer_params
    params.permit(:name, :hometown, :image, :age, :enemy)
  end
end

# t.string "name"
# t.string "hometown"
# t.integer "age"
# t.string "image"
# t.string "enemy"
