
# Geocode200Response


## Properties

Name | Type
------------ | -------------
`results` | [Array&lt;Geocode200ResponseResultsInner&gt;](Geocode200ResponseResultsInner.md)
`status` | string
`type` | string
`request` | [Geocode200ResponseRequest](Geocode200ResponseRequest.md)

## Example

```typescript
import type { Geocode200Response } from '@bmlt-enabled/geo-api-typescript-client'

// TODO: Update the object below with actual values
const example = {
  "results": null,
  "status": OK,
  "type": cache,
  "request": null,
} satisfies Geocode200Response

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Geocode200Response
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


