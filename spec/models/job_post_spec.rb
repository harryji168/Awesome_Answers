require 'rails_helper'
# rspec was generated by adding the gem `rspec-rails` and the following command
# `rails g rspec:install`
# this file was generated with : `rails g rspec:model JobPost`
RSpec.describe JobPost, type: :model do
  # The `describe` is used to group related tests together. 
  # It's primarily an organizational tool.
  # All of the grouped tests should be written within the block of the method
  describe "validates" do
    # `it` is another RSpec keyword which is used to define an "Example"(test case)
    # The string argument often uses the word `should`
    # and it meant to describe what specific behaviour should happen inside this block
    describe "title" do
      it("should have a title") do 
        # GIVEN
        jp = JobPost.new(title: nil)
  
        # WHEN
        # Validations are triggered
        jp.valid?
  
        # THEN
        # The following will pass the test if the errors.messages hash has a key named :title
        # This only occurs when a "title" validation fails
        expect(jp.errors.messages).to(have_key(:title))
  
      end
  
      it("title should be unique") do
        # GIVEN
        # persisted_job_post = JobPost.create(title: "something", description: "aaa", min_salary: 20)
        persisted_job_post = FactoryBot.create(:job_post)
        job_post = JobPost.new(title: persisted_job_post.title)
  
        # WHEN
        job_post.valid?
        # THEN
        expect(job_post.errors.messages).to(have_key(:title))
      end
    end

    describe "min_salary" do

      it "min_salary should be numerical" do
        jp = JobPost.new(min_salary: nil)
        jp.valid?
        expect(jp.errors.messages).to(have_key(:min_salary))  
      end

      it "min_salary should be greater than 30_000" do
        jp = FactoryBot.build(:job_post, min_salary: 10)
        jp.valid?
        expect(jp.errors.messages).to(have_key(:min_salary)) 
      end
      
    end
    
    



    describe "description" do
      it "should have description" do
        # GIVEN
        # jp = JobPost.new(description: nil)
        jp = FactoryBot.build(:job_post, description: nil)
        # WHEN
        jp.valid?
        # THEN
        expect(jp.errors.messages).to(have_key(:description))
      end
      
      it "description should longer than 100 letters" do
        jp = FactoryBot.build(:job_post, description: 'a')
        jp.valid?
        expect(jp.errors.messages).to(have_key(:description))  
      end
    end
    

    
  end
  
end