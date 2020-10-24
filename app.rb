require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  
  get 'square/:number' do
    @num1 = params[:number].to_i
    "#{@num1 * @num1}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num2 = 0
    until @num2 == @num
      "#{@phrase}"
      @num2 += 1
    end
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    
  end
  
  get '/:operation/:number1/:number2' do
    
  end 

end