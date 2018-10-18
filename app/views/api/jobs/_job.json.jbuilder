json.job_id job.id
json.start_time job.start_time
json.end_time job.end_time
json.child_id job.child_id


json.job_activities do
  json.array! job.job_activities, partial: 'api/job_activities/job_activity', as: :job_activity
end