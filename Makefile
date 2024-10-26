
SERVICE=openapi-generator

.PHONY: generate

generate:
	docker compose run --rm $(SERVICE) generate \
	-i /local/openapi.yaml \
	-g scala-play-server \
	-o /local/out/play-scala \
	-t /local/openapi/generator
