import boto3

ecr_client = boto3.client("ecr")

repository_name = "kubernetes-flask-app"

response = ecr_client.create_repository(repositoryName = repository_name)

repository_uri = response['repository']['respositoy_uri']

print(repository_uri)