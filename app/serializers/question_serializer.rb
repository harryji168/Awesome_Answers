class QuestionSerializer < ActiveModel::Serializer
    # Before rails send JSON it will check to see if the model has a serializer with the same name.
    # if rails finds a serializer it will automatically seralize the instances into a json response.
    # attributes method provided by active model serializer. Define what gets returned as JSOn within this method
    # https://github.com/rails-api/active_model_serializers/blob/v0.10.6/docs/general/serializers.md
    attributes(
      :id,
      :title,
      :body,
      :created_at,
      :updated_at,
      :view_count,
      :randomstuff,
      :like_count
    )
  
    def randomstuff
      "You can add any thing to your json response. This is an example"
    end
  
    def like_count
      # object refers to the instance of the model being serialized. Kind of like `this` in JS, or `self` in ruby.
      object.likes.count
    end
  
  end
  