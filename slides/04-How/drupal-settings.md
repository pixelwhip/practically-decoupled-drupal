## drupalSettings

- **Great for**:
  - Providing data to jQuery
  - Providing ancillary data

- **Downsides**:
  - Only works on partially decoupled sites
  - It’s the most “coupled” approach

<aside class="notes" data-markdown>
1. Ancillary data
   - Example: Filter options for a decoupled component that gets its data over an API
1. Only partially decoupled sites
   - Drupal still needs to serve at least the first page to include drupalSettings
1. Most "coupled"
   - The client side app can’t work without the server side knowing what it needs ahead of time
</aside>
