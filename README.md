# xq-tika
XQuery 3.0 (java bindings) module for exposing <a href="https://tika.apache.org/download.html">Apache Tika</a> parsing capabilities to xquery. Tika currently supports over a 1000 file types including popular office formats.<br />

<h3>Installation</h3>
1) Download the latest verison of the <a href="https://tika.apache.org/download.html">Tika-app.jar</a> file. 

2) Add the file to your class path or if using BaseX simply add the file to the BaseX\lib folder. 
<p />
Note in Windows: When launching BaseX as the GUI. Ensure to use the batch files located in BaseX\Bin folder, as opposed to the gui executable. The batch files ensure all jar files in the lib folder are added to the class path. 
<p />

2) Clone this repository to your local machine and import the xq-tika.xqm module into your project.

<h3>Functionality</h3>
The xq-tika module currently exposes two core methods: <code>parse</code> and <code>parse-lines</code>. <br />
Upon execution, the type of file is automatically detected with text contents returned utilizing the Tika libraries. <br />

<pre>parse($path as xs:string) as xs:string</pre>
<pre>parse-lines($path as xs:string) as xs:string*</pre>
To support large files, and reduce memory footprint, a max string length can be specified resulting in the document only being parsed up to the length specified.
<pre>parse($filePath as xs:string, $maxStringLength as xs:string) as xs:string</pre>
<pre>parse-lines($filePath as xs:string, $maxStringLength as xs:string) as xs:string*</pre>

<h3>Example</h3>

<pre>
import module namespace tika = "http://xq-tika";
tika:parse('c:\my-word-document.doc')
</pre>


Happy Parsing!



