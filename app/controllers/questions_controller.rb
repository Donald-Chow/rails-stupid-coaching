class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    return '' if your_message == 'I am going to work right now!'

    return 'Silly question, get dressed and go to work!' if your_message[-1] == '?'

    "I don't care, get dressed and go to work!"
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    return '' if your_message == 'I am going to work right now!'.upcase

    case your_message == your_message.upcase
    when true
      "I can feel your motivation! #{coach_answer(your_message)}"
    when false
      coach_answer(your_message)
    end
  end
end
