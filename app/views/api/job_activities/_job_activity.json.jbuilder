json.job_activity_id job_activity.id
json.job_id job_activity.job_id
json.start_time job_activity.start_time
json.duration job_activity.duration

json.activities do 
  json.partial! job_activity.activity, partial: 'api/activities/activity', as: :activity
end