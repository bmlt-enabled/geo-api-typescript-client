# TimezoneApi

All URIs are relative to *https://geo.aws.bmlt.app*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**timezone**](TimezoneApi.md#timezone) | **GET** /api/timezone | Look up the timezone for a location |



## timezone

> timezone(address, location)

Look up the timezone for a location

Provide either &#x60;address&#x60; (geocoded first) or &#x60;location&#x60; as \&quot;latitude,longitude\&quot; — the two are mutually exclusive. Returns dstOffset, rawOffset, timeZoneId and timeZoneName.

### Example

```ts
import {
  Configuration,
  TimezoneApi,
} from '@bmlt-enabled/geo-api-typescript-client';
import type { TimezoneRequest } from '@bmlt-enabled/geo-api-typescript-client';

async function example() {
  console.log("🚀 Testing @bmlt-enabled/geo-api-typescript-client SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new TimezoneApi(config);

  const body = {
    // string | Address to geocode and look up. Mutually exclusive with location. (optional)
    address: address_example,
    // string | Comma-separated latitude,longitude (e.g. 39.60,-119.68). Mutually exclusive with address. (optional)
    location: location_example,
  } satisfies TimezoneRequest;

  try {
    const data = await api.timezone(body);
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
| **address** | `string` | Address to geocode and look up. Mutually exclusive with location. | [Optional] [Defaults to `undefined`] |
| **location** | `string` | Comma-separated latitude,longitude (e.g. 39.60,-119.68). Mutually exclusive with address. | [Optional] [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Timezone result (dstOffset, rawOffset, timeZoneId, timeZoneName). |  -  |
| **401** | Missing or invalid API key. |  -  |
| **403** | Account not yet approved. |  -  |
| **422** | Validation error (both/neither parameter, or bad location format). |  -  |
| **500** | Upstream Google Timezone API error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

