##  Backend

<ul class="list--biggy">
  <li class="fragment">Authentication</li>
  <li class="fragment">Keeping things consistent</li>
  <li class="fragment">Mental shift</li>
  <li class="fragment">Things that are hard to do “the right way”</li>
</ul>

<aside class="notes" data-markdown>
**- Authentication**
  - It's not free in a fully decoupled site
    - Can't always rely on session cookie
  - E.g. native app needs something else
    - OAuth, JWT, Basic Auth

**- Keeping things consistent**
  - Controllers diverge
  - If you’re responding w/ custom JSON, what format should you use?
  - It’s not easy to create a rational, reusable API.
    - It’s an art that takes practice.
    - Assumptions will bite you.

**- Mental shift**
  - Page oriented vs. Data oriented
    - Our tendency is to think in terms of pages
    - You have main and secondary content, blocks and menus
    - This is all really “presentation”
  - What makes something "primary" or "secondary"
    - It’s a client side decision really
  - E.g. Blocks are “prescriptive”
    - The server determines what you see and how you see it.
    - A custom block might even just be pasted in HTML

**- Things that are hard to do “the right way”**
  - Aggregate data
    - Sums, counts, averages are hard to think about in a decoupled way
  - Menus
    - How your will your user navigate your application?
    - This could be considered presentation
  - Basically anything where the backend wants to “prescribe” presentation to the frontend is going to be difficult.
    - We either don’t have the right abstractions yet, or we’re simply thinking inside the wrong box
  - Example: An administrative “view”
    - If you have filters, where do the filters come from?
    - If they’re taxonomy terms, how do you get them?
    - Frontend needs to handle pagination state
    - Frontend needs to know how to craft the right queries
</aside>
