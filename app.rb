require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/' do
    "Hello World"
  end

  get '/reversename/:name' do
    #renders name backwards
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    #returns square of number
   square = params[:number].to_i
   "#{square * square}"
  end

  get '/say/:number/:phrase' do
    #accepts number and phrase and returns
    #phrase in a string the number of times
    puts_phrase = ""
    amount = params[:number].to_i
    #{}"#{amount}"
    amount.times {puts_phrase += "#{params[:phrase]}"}
    puts_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #returns a string containing all five words
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operator = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operator == "add"
      result = num1 + num2
    elsif operator == "subtract"
      result = num1 - num2
    elsif operator == "multiply"
      result = num1 * num2
    elsif operator == "divide"
      result = num1 / num2
    else
      result = "error!"
    end
    result.to_s
  end

end
