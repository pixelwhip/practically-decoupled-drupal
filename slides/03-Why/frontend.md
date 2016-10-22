##  Frontend

<ul class="list--biggy">
  <li class="fragment">Full markup control</li>
  <li class="fragment">Requires less knowledge of the backend</li>
  <li class="fragment">Interactivity</li>
  <li class="fragment">Offline support</li>
  <li class="fragment">Target more platforms</li>
</ul>

<aside class="notes" data-markdown>
Why would front-end developers like it?

#### Full markup control
In a decoupled application. Front-end developers have the oppurtunity to use a view layer of their choice. More often than not that would be a JS framework like Angular, Ember or React.  They get to build the ui from the ground up.

#### Less knowledge of the back-end
If the data is well structured and documented, we can work it.  The backend exposes the data and the front-end determines what variables or contexts get passed into the template. Where as in a typical Drupal site, the template or component heirarchy is determined by how the data was architected.

Front-end developers can focus on markup and interactions without worrying about the baggage of how the underlying data was implemented.

#### Interactivity
When content is rendered client side, you can inject new content into the page without a full page refresh.  Content can be edited and synced behind the scenes without a full page refresh.

#### Offline
If you're not relying on the server to produce the HTML or have the ability to do so client-side. You have the ability to create an application that works without an internet connection.

#### More Platforms
Product owners like it because they can target more platforms than the browser and make upgrades to the back-end without redesigning the front-end and vice versa.
</aside>
