##  Frontend
Moving complexity from the server to the client
<ul class="list--biggy" style="margin-top: 1em">
  <li class="fragment">Authentication</li>
  <li class="fragment">Accessibility</li>
  <li class="fragment">Network errors</li>
  <li class="fragment">Performance</li>
  <li class="fragment">Syncing</li>
</ul>

<aside class="notes" data-markdown>
- Everything we take for granted in Drupal
  - Text translation, path aliases, relationships
  - We're pushing a lot of complexity from the backend to the frontend.
- Authentication
 - CSRF tokens, cookies, oauth, CORS
- Accessibility
- Performance
- Everything we take for granted in the browser
 - Network error handling
 - Routing
- Network errors
 - What happens if a request 500s? What about 404 or 403? Do you abort? Retry?
 - Drupal just fails hard and returns a 500 screen
- Syncing (offline)
</aside>
