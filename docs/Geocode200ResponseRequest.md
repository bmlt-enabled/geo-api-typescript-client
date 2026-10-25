
# Geocode200ResponseRequest

Added by this service: an echo of the resolved request parameters.

## Properties

Name | Type
------------ | -------------
`search` | string
`application` | string
`language` | string
`referrer` | string
`region` | string

## Example

```typescript
import type { Geocode200ResponseRequest } from '@bmlt-enabled/geo-api-typescript-client'

// TODO: Update the object below with actual values
const example = {
  "search": New York, NY,
  "application": my-app,
  "language": en,
  "referrer": https://example.com,
  "region": null,
} satisfies Geocode200ResponseRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Geocode200ResponseRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


