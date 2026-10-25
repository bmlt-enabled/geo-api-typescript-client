.PHONY: generate-api-client
openapi.json:
	curl https://geo.aws.bmlt.app/api-docs > openapi.json

generate: openapi.json
	rm -rf src/resources/npm/api-client
	docker run --rm -v "$(shell pwd):/local" -w /local openapitools/openapi-generator-cli:v7.26.0 generate \
	    -i openapi.json \
	    -g typescript-fetch \
	    -p npmName=@bmlt-enabled/geo-api-typescript-client \
	    -p npmVersion=1.0.2 \
	    -p supportsES6=true \
	    --git-repo-id=geo-api-typescript-client \
	    --git-user-id=bmlt-enabled \
	    -o .

clean:
	rm -f openapi.json
	rm -rf src
