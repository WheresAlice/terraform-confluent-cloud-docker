FROM alpine as build_base
RUN apk --no-cache add wget unzip
WORKDIR /
RUN wget https://github.com/Mongey/terraform-provider-confluentcloud/releases/download/v0.0.5/terraform-provider-confluentcloud_0.0.5_linux_amd64.zip
RUN unzip -u terraform-provider-confluentcloud_0.0.5_linux_amd64.zip
RUN wget https://github.com/Mongey/terraform-provider-kafka/releases/download/v0.2.10/terraform-provider-kafka_0.2.10_linux_amd64.zip
RUN unzip -u terraform-provider-kafka_0.2.10_linux_amd64.zip
FROM hashicorp/terraform:0.13.5
ENV HOME /root
COPY --from=build_base /terraform-provider-kafka_v0.2.10 $HOME/.terraform.d/plugins/registry.terraform.io/mongey/kafka/0.2.10/linux_amd64/terraform-provider-kafka_v0.2.10
COPY --from=build_base /terraform-provider-confluentcloud_v0.0.5 $HOME/.terraform.d/plugins/registry.terraform.io/mongey/confluentcloud/0.0.5/linux_amd64/terraform-provider-confluentcloud_v0.0.5
