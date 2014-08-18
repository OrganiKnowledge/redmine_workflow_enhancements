Rails.configuration.to_prepare do
  WorkflowsController.helper :workflow_enhancements
  TrackersController.helper :workflow_enhancements
end

require_dependency 'workflow_enhancements/hooks'

Redmine::Plugin.register :redmine_workflow_enhancements do
  name 'Redmine Workflow Enhancements'
  author 'Daniel Ritz'
  description 'Enhancements for Workflow'
  version '0.2.0'
  url 'https://github.com/dr-itz/redmine_workflow_enhancements'
  author_url 'https://github.com/dr-itz/'

  requires_redmine '2.2.0'
end
