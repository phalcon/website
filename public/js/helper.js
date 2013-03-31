function format(){
    var b=document.getElementsByTagName("pre");
    for (i=0;i<b.length;i++)
        hljs.highlightBlock(b[i],null,false)
}