
.PHONY: bundle generate

bundle:
	docker run \
	--rm \
	-v ./:/local \
	redocly/cli bundle /local/openapi/openapi.yaml \
	-o /local/openapi/bundled.yaml

generate:
	docker run \
	--rm \
	-v ./:/local \
	openapitools/openapi-generator-cli generate \
	-i /local/openapi/bundled.yaml \
	-g scala-play-server \
	--model-package adapter.json \
	--global-property models \
	-o /local \
	-t /local/openapi/generator \

