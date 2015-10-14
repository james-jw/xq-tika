module namespace local = 'http://xq-tika';
declare namespace tika = "java:org.apache.tika.Tika";
declare namespace f = "java:java.io.File";

declare function local:parseToString($path as xs:string) {
  let $file := f:new($path)
  return tika:parseToString(tika:new(), $file)
};
