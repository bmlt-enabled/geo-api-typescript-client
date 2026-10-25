
# Geocode200ResponseResultsInnerGeometryLocation

Coordinates of the result. Read via results[0].geometry.location.

## Properties

Name | Type
------------ | -------------
`lat` | number
`lng` | number

## Example

```typescript
import type { Geocode200ResponseResultsInnerGeometryLocation } from '@bmlt-enabled/geo-api-typescript-client'

// TODO: Update the object below with actual values
const example = {
  "lat": 40.7127753,
  "lng": -74.0059728,
} satisfies Geocode200ResponseResultsInnerGeometryLocation

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Geocode200ResponseResultsInnerGeometryLocation
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


