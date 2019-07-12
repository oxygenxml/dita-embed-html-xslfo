Plugin which allows embedding well-formed HTML content in a DITA topic inside a special <foreign outputclass="html-embed"> element.
The plugin can also embed well-formed XSL-FO content in a DITA topic inside a special <foreign outputclass="xslfo-embed"> element.
The plugin works with both DITA OT 2.x and 3.x.

Example of embedding a YouTube video:

The DITA structure:

    ....
    <foreign outputclass="html-embed"><![CDATA[
                <iframe width="420" height="315" src="https://www.youtube.com/embed/qepRkQxhTXQ" frameborder="0" allowfullscreen="true">
                </iframe>
                ]]></foreign>
    ....
    
is converted in the HTML output to:

      ...........
      <iframe width="420" height="315" src="https://www.youtube.com/embed/qepRkQxhTXQ" frameborder="0" allowfullscreen="true">
      </iframe>
      ............

Copyright and License
---------------------
Copyright 2018 Syncro Soft SRL.

This project is licensed under [Apache License 2.0](https://github.com/oxygenxml/dita-embed-html/blob/master/LICENSE)
