##  Backend

<ul class="list--biggy">
  <li class="fragment">Drupal’s form API is not even a thought</li>
  <li class="fragment">Render arrays are not even a thought</li>
  <li class="fragment">Only concerned with the function of the application and not its presentation</li>
  <li class="fragment">Encourages a better data model</li>
  <li class="fragment">No extra fields just for putting something on the page</li> 
</ul>

<aside class="notes" data-markdown>
- Gone are the days of that monolithic form API page
- Never fret about #default\_value vs. #empty\_value
- Just concerned about what happend when X or Y happens and access control
- Data model is more pure
- "what is an article really?"
- Do we need that pull-quote field
- entity references upon entity references like we get w/ paragraphs or beans
</aside>
