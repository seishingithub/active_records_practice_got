class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_parameters)
    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  private
  def person_parameters
    params.require(:person).permit(:name, :description)
  end

end