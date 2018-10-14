json.id job_activity.id
json.id job_activity.job_id
json.start_time job_activity.start_time
json.duration job_activity.duration

json.activity do 
  json.partial! job_activity.activity, partial: 'api/activities/activity', as: :activity
end