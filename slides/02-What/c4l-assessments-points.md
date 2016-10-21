## Connect 4 Learning
- "Progressively" decoupled
  - Whole portions of the application are done with React alone vs. "partially" decoupled which relied on Drupal pushing data
- Single React app embedded within a greater Drupal application
  - React app has its own routing system within the client
  - Shared app code across routes.

<h4 class="sub-section__heading">Built with:</h4>
  - Drupal 8 _(drupalSettings, custom controllers, Entity Query API module)_
  - React

<aside class="notes" data-markdown>
# Ferris
- Progressive because we have a normal site, but have pieces of it which could be standalone
- Interestingly, we're shipping a single app, not a number of different one
  - It uses the window location for routing, rendering different screens based on that
# Gabe
  - Nearly all data is requested from the client rather than "pushed" to the client
  - If you consider the way Drupal's AJAX system works, you have a JSON document that has a "command" in it like "replace some selector with _foo_" and then a property which contains the fully rendered HTML to shove into the DOM.
    - Effectively, Drupal prescribes the presentation to the client
    - With a decoupled application, presentation is wholly left to the client, Drupal simply provides the data
  - On the backend, we made heavy use of custom controllers and routes that would provied almost exactly what the client needed
    - While convenient, it increases the maintenance burden, to make a change, things need to be altered on both ends of the application
    - It's hard to keep the data consistently formatted
    - After some time, you'll notice patterns and how you could have consolidated code, but it's already written
    - When you do try to make a pattern and reuse code, you'll realize an exception that breaks the mould
      - Since the expectation has been set that the application "delivers" rather than simply providing a "menu" of data to select from you'll need to alter your code and will be blocking the frontend work until you do
  - Where we could, we used the Entity Query API module
    - Essentially, it's a query string syntax for creating entity queries like you would have on the backend
    - The loaded entities are serialized into JSON and returned
    - This is much more flexible than custom controllers, the client just "asks" for the data it wants without any extra backend code
    - The issue with it is that it's relatively heavy, if you just want a list of student names, you should need to load the fully document
    - It can't provide "aggregates" like "how many students are in this class?"
      - You'd have to load all the students and then count them client side
</aside>
