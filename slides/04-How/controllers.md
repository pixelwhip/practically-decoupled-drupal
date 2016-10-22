## Custom Controllers

<h4 class="subsection__heading">Great for:</h4>
  - Processed or aggregate data
  - Providing ancillary data
  - Non-deterministic data

<h4 class="subsection__heading">Downsides:</h4>
  - Very difficult to make the "general-purpose"
  - End up tightly coupled to the front end

<aside class="notes" data-markdown>
1. Processed and aggregate data
  - How many nodes of type foo do I have?
  - The C4L table
  - Image metadata
1. Non-deterministic data
  - When the response changes given some external factor like:
    - time of day
    - randomly (like a random blog post)

1. General Purpose
  - You'll end up making a ton of these
  - Instead of client requests, it's coworker requests
    - This couples the backend to the frontend and makes it inflexible
  - By the time you see emerging patterns, it's probably too late to go back and refactor
  - If you try to make a pattern too early, it ends up getting riddled with exceptions
</aside>
