class QuestionsController < ApplicationController
  before_action :find_test
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index; end

  def new; end

  def show; end

  def create
    @test.questions.create(question_params)
    redirect_to test_questions_url
  end

  def destroy
    @question.destroy

    # Не работает редирект на страничку теста после удаления
    redirect_to test_questions_url
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
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
