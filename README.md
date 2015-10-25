# xq-tika
XQuery 3.0 (java bindings) module for exposing <a href="https://tika.apache.org/download.html">Apache Tika</a> parsing capabilities to xquery. Tika currently supports over a 1000 file types including popular office formats.<br />

### Installation

##### Automated
Use [xqpm][0] to do it for you!
```
xqpm xq-tika
```

##### Manually
1) Download the latest verison of the <a href="https://tika.apache.org/download.html">Tika-app.jar</a> file. 

2) Add the file to your class path or if using BaseX simply add the file to the BaseX\lib folder. 
<p />
Note in Windows: When launching BaseX as the GUI. Ensure to use the batch files located in BaseX\Bin folder, as opposed to the gui executable. The batch files ensure all jar files in the lib folder are added to the class path. 
<p />

2) Clone this repository to your local machine and import the xq-tika.xqm module into your project.

### Functionality
The xq-tika module currently exposes two core methods: <code>parse</code> and <code>parse-lines</code>. <br />
Upon execution, the type of file is automatically detected with text contents returned utilizing the Tika libraries. <br />

```xquery
parse($path as xs:string) as xs:string
```
```xquery
parse-lines($path as xs:string) as xs:string*
```
To support large files, and reduce memory footprint, a max string length can be specified resulting in the document only being parsed up to the length specified.
```xquery
parse($filePath as xs:string, $maxStringLength as xs:string) as xs:string
```
```xquery
parse-lines($filePath as xs:string, $maxStringLength as xs:string) as xs:string*
```

### Example

```xquery
import module namespace tika = "http://xq-tika";
tika:parse('c:\my-word-document.doc')
```

#### Shout Out!
If you like what you see here please star the repo and follow me on github or linkedIn

Happy Parsing!

[0]: https://github.com/james-jw/xqpm

