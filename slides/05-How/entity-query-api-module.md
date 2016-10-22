## Entity Query API Module

<h4 class="subsection__heading"><span class="fragment">Was </span>Great for:</h4>
  - Complementing REST module
  - Views without using views
  - Accessing the power of entity queries from the client

<h4 class="subsection__heading">Downsides:</h4>
  <ul>
    <li class="">JSON format only only</li>
    <li class="fragment">I'm not really supporting it...</li>
    <li class="fragment">*Terrible name...*</li>
  </ul>


<aside class="notes" data-markdown>
- Basically allows a client to create entity queries and get them returned as JSON
- It was meant to fill the space between Core REST and Views REST Export
- Lets the client drive the experience, can be enabled per content type like Core REST
- Avoids the coupling you get from exported views and is pretty “general-purpose”
- I wrote it and at this point I would actually recommend the JSON API module
</aside>
