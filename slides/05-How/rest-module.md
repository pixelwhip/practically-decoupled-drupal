## Core REST module

<h4 class="subsection__heading">Great for:</h4>
  - No dependencies
  - Stability
  - If you just need to expose something small and isolated

<h4 class="subsection__heading">Downsides:</h4>
  - Wasn't originally intended for decoupled applications
  - Leaks a ton of drupalisms to the client
  - Configuration is frustrating
  - No support for client-driven collections

<aside class="notes" data-markdown>
- Small and isolated
  - I wouldn't try to build a full site around it
- Intended for content synchronization
  - When the system was conceived, it was meant for content synchronization between sites
  - This shows because it exposes lots of Drupalisms
  - For example:
    - There's no concept of collections
      - Impossible to say "give me all nodes created after some date"
      - You have to export a view for this, but all you have are contextual filters
        - Can't change sorting
  - HAL+JSON is wonky
- Leaky drupal
  - No such thing as single value field, every value is at `field_name[0].value`
- Tangent on Views
  - Hardest mental shift to make is separating data from presentation
  - Drupal has made us very accustomed to the server deciding what to show you and how
  - A View is a very prescriptive concept
  - Just because it's JSON, doesn't make it decoupled
  - You want to allow your client to explore, reframe, and compose your data
  - Views determine ordering, filtering, and pagination on the server side
  - If you don't include a the uid field in the export, there's absolutely no way to show author info in the client
  - One of the promises of a decoupled approach is to redesign and refactor your site without changing the backend
    - An exported view makes this very difficult
- Don't mean to bash it too hard, it was just made with a different use case in mind
- Lots of hard work going on to make it better
</aside>
