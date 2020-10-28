# terraform-confluent-cloud-docker

Docker image to run Terraform 13 with Confluent Cloud and Kafka providers from Mongey

Usage:

```
docker run -ti -v `pwd`:/workspace -w /workspace kaerast/terraform-confluent-cloud-docker:latest init
```
