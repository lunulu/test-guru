class QuestionsController < ApplicationController
  before_action :find_test, only: %i[create index new]
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index; end

  def new; end

  def show; end

  def create
    question = @test.questions.new(question_params)
    if question.save
      # Всплывающее окно
    else
      # Всплывающее окно
    end
    redirect_to test_questions_url
  end

  def destroy
    @question.destroy
  end

  private

  def find_test
    @test = if params[:test_id]
              Test.find(params[:test_id])
            else
              @question.test
            end
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render inline: '<p>Вопрос №<%= params[:id] %> не найден</p>'
  end
end
