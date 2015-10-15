(: Java Bindings for Apache Tika  
 @author James Wright
:)

module namespace local = 'http://xq-tika';
declare namespace tika = "java:org.apache.tika.Tika";
declare namespace f = "java:java.io.File";

(: Parses the file at the specified path with no limit on string size. :)
declare function local:parse($path as xs:string) as xs:string {
  local:parse($path, -1)
};

(: Parses the file at the specified path returning only as many characters as specified in maxStringLength. :)
declare function local:parse($path as xs:string, $maxStringLength as xs:integer) as xs:string {
  let $file := f:new($path)
  let $tika := tika:new()
  return (
    tika:setMaxStringLength($tika, xs:int($maxStringLength)),
    tika:parseToString($tika, $file)
  )
};

(: Parses a document, splitting the reuslts into lines. :)
declare function local:parse-lines($path as xs:string) as xs:string* {
  local:parse-lines($path, -1)
};

(: Parses a document, limiting result length and spliting the results into
 : lines :)
declare function local:parse-lines($path as xs:string, $maxStringLength as xs:integer) as xs:string* {
  local:parse($path, $maxStringLength) => tokenize('\n')
};
