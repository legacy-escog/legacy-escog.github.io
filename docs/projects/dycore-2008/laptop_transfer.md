<h1 class="title">Bluevista laptop file transfer via Email</h1>

<div id="cog_post_body">
    <div id="cog_post_body">
        <p>Transfer a binary file (e.g., <em>file.jpg</em>) from Bluevista to your laptop with</p>
<ul>
<li>uuencode <em>file.jpg</em> <em>file.jpg</em> | cat desc - | mailx -s "Here is the good stuff" $USER@ucar.edu</li>
</ul>
<p>If you would like to transfer a text file use:</p>
<p>bv1203en$ mailx -s "this is the desc file" mpage@ucar.edu &lt; desc</p>
</div> <!--// end div id=cog_post_body //-->
