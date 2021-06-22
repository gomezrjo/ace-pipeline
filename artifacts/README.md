# Deployment order:

1. PipelineResource: GIT
2. PipelineResource: Image
3. PipelineTask: DockerF Build Push
4. PipelineTask: Deploy ACE Img
5. Pipeline: ACE CICD
6. PipelineTriggerTemplate: ACE CICD
7. PipelineEventListener: ACE CICD
8. PipelineRoute: Event Listener ACE CICD
