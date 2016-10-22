## Entity Query API Module

**<span class="fragment">Was </span>Great for:**
  - Complementing REST module
  - Views without using views
  - Accessing the power of entity queries from the client

**Downsides:**
  - JSON format only only
  - <span class="fragment">I'm not really supporting it...</span>
  - <span class="fragment">*Terrible name...*</span>

<aside class="notes" data-markdown>
- Basically allows a client to create entity queries and get them returned as JSON
- It was meant to fill the space between Core REST and Views REST Export
- Lets the client drive the experience, can be enabled per content type like Core REST
- Avoids the coupling you get from exported views and is pretty “general-purpose”
- I wrote it and at this point I would actually recommend the JSON API module
</aside>
