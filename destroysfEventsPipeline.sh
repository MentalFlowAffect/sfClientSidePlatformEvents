heroku pipelines:destroy sfevents-pipeline
heroku apps:destroy -a sfeventspipeline-dev -c sfeventspipeline-dev
heroku apps:destroy -a sfeventspipeline-staging -c sfeventspipeline-staging
heroku apps:destroy -a sfeventspipeline-prod -c sfeventspipeline-prod
rm -- "destroysfeventspipeline.sh"
