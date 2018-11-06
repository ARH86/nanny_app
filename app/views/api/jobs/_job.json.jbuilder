json.id job.id
json.start_time job.friendly_start_time
json.end_time job.friendly_end_time
json.child_id job.child_id

# json.formatted do 
#   json.start_time job.friendly_start_time
# end


json.job_activities do
  json.array! job.job_activities, partial: 'api/job_activities/job_activity', as: :job_activity
end