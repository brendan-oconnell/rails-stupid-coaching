class QuestionsController < ApplicationController

  def ask
  end

  def answer
    question_to_coach = params[:question]
    @display_answer = ''
    if question_to_coach.include?('?')
      @display_answer = 'Silly question, get dressed and go to work!'
    elsif question_to_coach == question_to_coach.upcase
      @display_answer = "I can feel your motivation! I don't care, get dressed and go to work!"
    elsif question_to_coach == 'I am going to work'
      @display_answer = 'Great!'
    else
      @display_answer = "I don't care, get dressed and go to work!"
    end
  end

end


# class PagesController < ApplicationController
#   def contact
#     @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]

#     if params[:member]
#       @members = @members.select { |member| member.start_with?(params[:member]) }
#     end
#   end
# end




# def coach_answer(your_message)
#   if your_message.include?("?")
#     return "Silly question, get dressed and go to work!"
#   # TODO: return coach answer to your_message
#   elsif your_message == "I am going to work right now!"
#     return ""
# else
#     return "I don't care, get dressed and go to work!"
#   end
# end

def coach_answer_enhanced(your_message)
  if your_message.include?("?") && (your_message == your_message.upcase)
    return "I can feel your motivation! Silly question, get dressed and go to work!"
  # TODO: return coach answer to your_message
 elsif your_message == "I am going to work right now!".upcase
    return ""
  elsif your_message == your_message.upcase
    return "I can feel your motivation! I don't care, get dressed and go to work!"
  elsif   your_message.include?("?")
    return "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    return ""
  else
    return "I don't care, get dressed and go to work!"
  end
end
