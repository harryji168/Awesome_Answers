FactoryBot.define do
  factory :job_post do
    title { Faker::Job.title }
    description { Faker::Job.field }
    min_salary { rand(10_000..20_000) }
  end
end
