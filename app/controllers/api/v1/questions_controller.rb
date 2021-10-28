class Api::V1::QuestionsController < ApplicationController
    # this controller is generated by rails g controller api/v1/questions --no-assets --no-helper --skip-template-engine
    # also remember to change the parent class => Api::ApplicationController
    def index
        # return all the questions in json format
        questions = Question.order(created_at: :desc)
        render(json: questions, each_serializer: QuestionCollectionSerializer)
    end

    def show
        # return a single question in json format
        question = Question.find params[:id]
        render(json: question)
    end
    
    def create
        # when user send a request generate a new question
        # response failed or success
    end
    
    def destroy
        # based on the id of the user requset, delete that question
        question = Question.find(params[:id])
        if question.destroy
            render(json:{status:200})
        else
            render(json:{status:500})
        end
    end
end
