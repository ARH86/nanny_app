json.id job.id
json.start_time job.friendly_start_time
json.end_time job.friendly_end_time
json.child_id job.child_id
json.child_name job.child.name
json.friendly_start_time job.friendly_start_time


json.job_activities do
  json.array! job.job_activities, partial: 'api/job_activities/job_activity', as: :job_activity
end