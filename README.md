Enable provenance API https://cloud.google.com/build/docs/securing-builds/generate-validate-build-provenance
Create repo in artifact registry https://cloud.google.com/artifact-registry/docs/repositories/create-repos
Create an SA for build https://cloud.google.com/build/docs/securing-builds/configure-user-specified-service-accounts. Follow the link to create an SA https://cloud.google.com/iam/docs/service-accounts-create (select the Cloud build role)
  In IAM & admin / serivce account, we can click on the new account (provenance-build@...) and see its permissions. For me it grants all artifactregistry, storage, logs and a few others
Create the trigger in cloud build, which will ask to connect to the GitHub repo https://cloud.google.com/build/docs/automating-builds/create-manage-triggers
Visit trigger page and run it

https://bughunters.google.com/blog/5679863572070400/protecting-large-language-models
https://unit42.paloaltonetworks.com/privilege-escalation-llm-model-exfil-vertex-ai/

curl -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/
env
$ curl -sI http://169.254.169.254 | grep Server:
Server: Metadata Server for VM

$ curl http://169.254.169.254/computeMetadata/v1/instance/service-accounts/default/email \
    -H Metadata-Flavor:Google \
service-1234567890@gcp-sa-aiplatform-cc.iam.gserviceaccount.com

$ curl http://169.254.169.254/computeMetadata/v1/project/project-id \
    -H Metadata-Flavor:Google \
9efd0213678c10f935-tp


