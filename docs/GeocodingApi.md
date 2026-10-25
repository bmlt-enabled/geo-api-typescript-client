# GeocodingApi

All URIs are relative to *https://geo.aws.bmlt.app*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**geocode**](GeocodingApi.md#geocode) | **GET** /api/geocode | Geocode an address or place |



## geocode

> Geocode200Response geocode(application, search, referrer, language, region, north, south, east, west)

Geocode an address or place

Returns the Google Maps Geocoding response (served from the shared cache when available) plus &#x60;type&#x60; (\&quot;cache\&quot; or \&quot;live\&quot;) and a &#x60;request&#x60; echo.

### Example

```ts
import {
  Configuration,
  GeocodingApi,
} from '@bmlt-enabled/geo-api-typescript-client';
import type { GeocodeRequest } from '@bmlt-enabled/geo-api-typescript-client';

async function example() {
  console.log("🚀 Testing @bmlt-enabled/geo-api-typescript-client SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GeocodingApi(config);

  const body = {
    // string | Your application identifier (used for analytics).
    application: application_example,
    // string | Address or place to geocode.
    search: search_example,
    // string | URL of the requesting page (region detection + analytics).
    referrer: referrer_example,
    // string | BCP-47 language code (default: en). (optional)
    language: language_example,
    // string | Region bias as a ccTLD (e.g. \"fr\", \"ca\"). Overrides the region inferred from the referrer domain — useful when the referrer has no country TLD. (optional)
    region: region_example,
    // number | Viewport north bound (decimal degrees). (optional)
    north: 3.4,
    // number | Viewport south bound (decimal degrees). (optional)
    south: 3.4,
    // number | Viewport east bound (decimal degrees). (optional)
    east: 3.4,
    // number | Viewport west bound (decimal degrees). (optional)
    west: 3.4,
  } satisfies GeocodeRequest;

  try {
    const data = await api.geocode(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **application** | `string` | Your application identifier (used for analytics). | [Defaults to `undefined`] |
| **search** | `string` | Address or place to geocode. | [Defaults to `undefined`] |
| **referrer** | `string` | URL of the requesting page (region detection + analytics). | [Defaults to `undefined`] |
| **language** | `string` | BCP-47 language code (default: en). | [Optional] [Defaults to `undefined`] |
| **region** | `string` | Region bias as a ccTLD (e.g. \&quot;fr\&quot;, \&quot;ca\&quot;). Overrides the region inferred from the referrer domain — useful when the referrer has no country TLD. | [Optional] [Defaults to `undefined`] |
| **north** | `number` | Viewport north bound (decimal degrees). | [Optional] [Defaults to `undefined`] |
| **south** | `number` | Viewport south bound (decimal degrees). | [Optional] [Defaults to `undefined`] |
| **east** | `number` | Viewport east bound (decimal degrees). | [Optional] [Defaults to `undefined`] |
| **west** | `number` | Viewport west bound (decimal degrees). | [Optional] [Defaults to `undefined`] |

### Return type

[**Geocode200Response**](Geocode200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Geocoding result (cache or live). The body is the Google Maps Geocoding response verbatim, with &#x60;type&#x60; and &#x60;request&#x60; added by this service. &#x60;results&#x60; is an empty array when &#x60;status&#x60; is &#x60;ZERO_RESULTS&#x60;. |  -  |
| **401** | Missing or invalid API key. |  -  |
| **403** | Account not yet approved. |  -  |
| **422** | Validation error (missing required parameters). |  -  |
| **429** | Rate limit exceeded — see Retry-After header. |  -  |
| **502** | Upstream geocoding service returned an invalid or error response. |  -  |
| **503** | Upstream geocoding quota exceeded — see Retry-After header. |  -  |
| **504** | Upstream geocoding service did not respond in time. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

