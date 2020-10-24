require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  
  get '/square/:number' do
    @num1 = params[:number].to_i
    "#{@num1 * @num1}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @empty = ""
    
    @num.times do
      @empty << @phrase
      @empty << "\n"
    end
    "#{@empty}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]}, #{params[:word2]}, #{params[:word3]}, #{params[:word4]}. #{params[:word5]}"
  end
  
  get '/:operation/:number1/:number2' do
    
  end 

end