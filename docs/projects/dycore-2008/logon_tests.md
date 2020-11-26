<h1 class="title">Student Logon Tests</h1>

<div id="cog_post_body">
    <div id="cog_post_body">
        <p>If you don't have SSH installed on your computer or is unfamiliar with SSH see <a class="external-link" rel="nofollow" href="http://www.cisl.ucar.edu/docs/ssh/">http://www.cisl.ucar.edu/docs/ssh/</a></p>
<p>Follow the instructions on</p>
<p><a class="external-link" rel="nofollow" href="https://www.cisl.ucar.edu/docs/password/internal/cryptocard/logon.html">https://www.cisl.ucar.edu/docs/password/internal/cryptocard/logon.html</a></p>
<p>to log on to the supercomputer "Bluevista" using your cryptocard (you will need your UCAS username and password to see the page).</p>
<p>The default shell is the Korn shell. If you would like to use another shell see <a class="external-link" rel="nofollow" href="http://www.cisl.ucar.edu/docs/blueice/overview.html#acct">http://www.cisl.ucar.edu/docs/blueice/overview.html#acct</a></p>
<p>Type the following commands on the command line:</p>
<p><em>mkdir layered</em><br /> <em>cd layered</em><br /> <em>cp /usr/local/examples/lsf/batch/layered/* .</em></p>
<p>edit the file <strong>run.lsf</strong> &amp; replace the project number there in the <strong>#BSUB -P</strong> line with yours. Your project number is next to your name in the list below.</p>
<p>Execute the following command:</p>
<p><em>bsub &lt; run.lsf</em></p>
<p>If your job was successfully submitted the message similar to the one below is written to the screen:</p>
<p><em>Job &lt;951703&gt; is submitted to queue &lt;regular&gt;.</em></p>
<p>When using the supercomputer your account is charged in <strong>General Accounting Units</strong> (GAU). To track your GAUs usage log on to the CISL portal (<a class="external-link" rel="nofollow" href="https://portal.scd.ucar.edu:8443/scd-portal/displayMainPage.do">https://portal.scd.ucar.edu:8443/scd-portal/displayMainPage.do</a>) using your UCAS username and password. Click on the <strong>GAU</strong> tab.</p>
<p>If you have any problems please contact Mike Page (mpage@ucar.edu, Phn: 303-497-2464, Cell: 303-944-8291)</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<th class="confluenceTh">USERNAME </th> <th class="confluenceTh">PROJECT  NUMBER</th>
</tr>
<tr>
<td class="confluenceTd">Campin,Jean-Michel</td>
<td class="confluenceTd">35171136</td>
</tr>
<tr>
<td class="confluenceTd">Casado-Lopez,Alberto</td>
<td class="confluenceTd">35201090</td>
</tr>
<tr>
<td class="confluenceTd">Chen,Chih-Chieh-Jack</td>
<td class="confluenceTd">37591042</td>
</tr>
<tr>
<td class="confluenceTd">Christensen,Allan</td>
<td class="confluenceTd">35201090</td>
</tr>
<tr>
<td class="confluenceTd">Clancy,Colm</td>
<td class="confluenceTd">37321000</td>
</tr>
<tr>
<td class="confluenceTd">Crowell,Sean</td>
<td class="confluenceTd">38401001</td>
</tr>
<tr>
<td class="confluenceTd">DeLonge,Marcia</td>
<td class="confluenceTd">35171136</td>
</tr>
<tr>
<td class="confluenceTd">Deng,Qiang</td>
<td class="confluenceTd">38401001</td>
</tr>
<tr>
<td class="confluenceTd">Devlin,David JamesJohn</td>
<td class="confluenceTd">37321000</td>
</tr>
<tr>
<td class="confluenceTd">Dubinkina,Svetlana</td>
<td class="confluenceTd">38041005</td>
</tr>
<tr>
<td class="confluenceTd">Foerstner,Jochen</td>
<td class="confluenceTd">37321000</td>
</tr>
<tr>
<td class="confluenceTd">Gassmann,Almut</td>
<td class="confluenceTd">37321000</td>
</tr>
<tr>
<td class="confluenceTd">Gomes Jr,Jairo Geraldo</td>
<td class="confluenceTd">38411000</td>
</tr>
<tr>
<td class="confluenceTd">Guba,Oksana</td>
<td class="confluenceTd">38041005</td>
</tr>
<tr>
<td class="confluenceTd">Hansen,AyoeBuus</td>
<td class="confluenceTd">38401000</td>
</tr>
<tr>
<td class="confluenceTd">Harris,Lucas</td>
<td class="confluenceTd">35161077</td>
</tr>
<tr>
<td class="confluenceTd">Heikes,Ross</td>
<td class="confluenceTd">35081308</td>
</tr>
<tr>
<td class="confluenceTd">Jablonowski,Christiane</td>
<td class="confluenceTd">35201090</td>
</tr>
<tr>
<td class="confluenceTd">Kapur,Atul</td>
<td class="confluenceTd">38401000</td>
</tr>
<tr>
<td class="confluenceTd">Kim,JinYoung</td>
<td class="confluenceTd">38411000</td>
</tr>
<tr>
<td class="confluenceTd">Kim,Jun-Eun</td>
<td class="confluenceTd">35081308</td>
</tr>
<tr>
<td class="confluenceTd">Kim,Junsu</td>
<td class="confluenceTd">35081308</td>
</tr>
<tr>
<td class="confluenceTd">Kok,Jasper</td>
<td class="confluenceTd">38041005</td>
</tr>
<tr>
<td class="confluenceTd">Kravitz,Ben</td>
<td class="confluenceTd">38401000</td>
</tr>
<tr>
<td class="confluenceTd">Kvissel,Ole Kristian</td>
<td class="confluenceTd">35201090</td>
</tr>
<tr>
<td class="confluenceTd">Long,Matthew</td>
<td class="confluenceTd">35171136</td>
</tr>
<tr>
<td class="confluenceTd">Majewski,Detlev</td>
<td class="confluenceTd">38411000</td>
</tr>
<tr>
<td class="confluenceTd">Mooney,Priscilla</td>
<td class="confluenceTd">37591042</td>
</tr>
<tr>
<td class="confluenceTd">Murray,Lee Thomas</td>
<td class="confluenceTd">35161077</td>
</tr>
<tr>
<td class="confluenceTd">Nair,Ramachandran</td>
<td class="confluenceTd">38401001</td>
</tr>
<tr>
<td class="confluenceTd">Nielsen,Joakim</td>
<td class="confluenceTd">35081308</td>
</tr>
<tr>
<td class="confluenceTd">Norman,Matthew Ross</td>
<td class="confluenceTd">35171136</td>
</tr>
<tr>
<td class="confluenceTd">Otte,Martin</td>
<td class="confluenceTd">38041005</td>
</tr>
<tr>
<td class="confluenceTd">Peffers,Luke Thomas</td>
<td class="confluenceTd">35161077</td>
</tr>
<tr>
<td class="confluenceTd">Sahany,Sandeep</td>
<td class="confluenceTd">38401001</td>
</tr>
<tr>
<td class="confluenceTd">Savic-Jovcic,Verica</td>
<td class="confluenceTd">35161077</td>
</tr>
<tr>
<td class="confluenceTd">Sawyer,William</td>
<td class="confluenceTd">36241002</td>
</tr>
<tr>
<td class="confluenceTd">Scott,Andrea</td>
<td class="confluenceTd">36241002</td>
</tr>
<tr>
<td class="confluenceTd">Shrestha,Prabhakar</td>
<td class="confluenceTd">37591042</td>
</tr>
<tr>
<td class="confluenceTd">Song,Guan</td>
<td class="confluenceTd">36241002</td>
</tr>
<tr>
<td class="confluenceTd">Song,Hajoon</td>
<td class="confluenceTd">36241002</td>
</tr>
<tr>
<td class="confluenceTd">Sorensen,Brian</td>
<td class="confluenceTd">37321000</td>
</tr>
<tr>
<td class="confluenceTd">Su,Lin</td>
<td class="confluenceTd">35161077</td>
</tr>
<tr>
<td class="confluenceTd">Subramanian,Aneesh C</td>
<td class="confluenceTd">35201090</td>
</tr>
<tr>
<td class="confluenceTd">Sun,Lantao</td>
<td class="confluenceTd">35081308</td>
</tr>
<tr>
<td class="confluenceTd">Taylor,Mark</td>
<td class="confluenceTd">38401000</td>
</tr>
<tr>
<td class="confluenceTd">Taylor,Mark</td>
<td class="confluenceTd">38401001</td>
</tr>
<tr>
<td class="confluenceTd">Ullrich,Paul</td>
<td class="confluenceTd">37591042</td>
</tr>
<tr>
<td class="confluenceTd">Walko,Robert</td>
<td class="confluenceTd">38041005</td>
</tr>
<tr>
<td class="confluenceTd">Wan,Hui</td>
<td class="confluenceTd">36241002</td>
</tr>
<tr>
<td class="confluenceTd">Whitehead,Jared</td>
<td class="confluenceTd">38411000</td>
</tr>
<tr>
<td class="confluenceTd">Williams,Dustin</td>
<td class="confluenceTd">36241002</td>
</tr>
<tr>
<td class="confluenceTd">Zalucha,Angela</td>
<td class="confluenceTd">38401000</td>
</tr>
<tr>
<td class="confluenceTd">Zhou,Cheng</td>
<td class="confluenceTd">37321000</td>
</tr>
</tbody>
</table>
</div>
</div> <!--// end div id=cog_post_body //-->
