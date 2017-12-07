require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
require_relative 'models/burd.rb'
require_relative 'models/student.rb'
require_relative 'models/course.rb'
require_relative 'models/mealcard.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
#   text_from_user = params[:user_text]
#   @analyzed_text = TextAnalyzer.new(text_from_user)
#   Here's a shorter way to do this:
    @analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :results
  end

  get '/burd' do
    "You haven't entered in anything yet!"
  end

  post '/burd' do
    @falcon = Burd.new(params[:burd_text])
    erb :burd
  end

  get '/yield' do
    erb :yield_test
  end

  get '/school' do
    erb :school
  end

  post '/student' do
    @student = Student.new(params[:student])

    params[:student][:courses].each do |details|
      Course.new(details)
    end

    @courses = Course.all

    #params[:student][:meal_card].each do |thingys|
    #  MealCard.new(thingys)
    #end

    #@meal_card = MealCard.all
    # As it stands, the code is producing the following hash:
=begin
     params = {
       "name"=>"Bernard",
       "meal_card"=>{
          "id"=>"34906",
          "type"=>"Vegatarian"
        },
       "grade"=>"12th",
       "courses" => [
       {
         "name"=>"Hist-101",
         "topic"=>"World History"
       },
       {
         "name"=>"Hist-590",
         "topic"=>"History of Antarctica "
       }
      ]
     }
=end



#   This line below produces an error, I'm not sure how the student knows it owns its meal card.
#   @student.meal_card = @meal_card
    erb :student
  end
end
