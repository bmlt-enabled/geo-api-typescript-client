
# Geocode200ResponseResultsInnerGeometry


## Properties

Name | Type
------------ | -------------
`location` | [Geocode200ResponseResultsInnerGeometryLocation](Geocode200ResponseResultsInnerGeometryLocation.md)
`locationType` | string
`viewport` | [Geocode200ResponseResultsInnerGeometryViewport](Geocode200ResponseResultsInnerGeometryViewport.md)
`bounds` | [Geocode200ResponseResultsInnerGeometryBounds](Geocode200ResponseResultsInnerGeometryBounds.md)

## Example

```typescript
import type { Geocode200ResponseResultsInnerGeometry } from '@bmlt-enabled/geo-api-typescript-client'

// TODO: Update the object below with actual values
const example = {
  "location": null,
  "locationType": APPROXIMATE,
  "viewport": null,
  "bounds": null,
} satisfies Geocode200ResponseResultsInnerGeometry

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Geocode200ResponseResultsInnerGeometry
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


