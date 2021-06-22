# Deployment order:

1. PipelineTask: DockerF Build Push
2. PipelineTask: Deploy ACE Img
3. Pipeline: ACE CICD
4. PipelineTriggerTemplate: ACE CICD
5. PipelineEventListener: ACE CICD
6. PipelineRoute: ACE CICD
