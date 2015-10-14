module namespace local = 'http://xq-tika';
declare namespace tika = "java:org.apache.tika.Tika";
declare namespace f = "java:java.io.File";

declare function local:parse($path as xs:string) as xs:string {
  local:parse($path, -1)
};

declare function local:parse($path as xs:string, $maxStringLength as xs:integer) as xs:string {
  let $file := f:new($path)
  let $tika := tika:new()
  return (
    tika:setMaxStringLength($tika, xs:int($maxStringLength)),
    tika:parseToString($tika, $file)
  )
};
