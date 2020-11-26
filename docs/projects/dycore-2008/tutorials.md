<h1 class="title">Tutorials</h1>

<div id="cog_post_body">
    <div id="cog_post_body">
        <h2 style="text-align: left;">Bluevista</h2>
<p>See Mike Page's talk under attachments.</p>
<h2 style="text-align: left;"><a name="Studenttutorials-FiletransferfromyourlaptoptoBluevistaorviceversa"></a>File transfer from your laptop to Bluevista or vice versa</h2>
<p>see <a class="external-link" rel="nofollow" href="https://www.cisl.ucar.edu/docs/access/internal/inbound.html">https://www.cisl.ucar.edu/docs/access/internal/inbound.html</a></p>
<p>Troubleshooting: Contact Mike Page, ext. 2464, mpage@ucar.edu</p>
<h2 style="text-align: left;"><a name="Studenttutorials-Shell"></a>Shell</h2>
<p>The default shell is the Korn shell. If you would like to use another shell see <a class="external-link" rel="nofollow" href="http://www.cisl.ucar.edu/docs/blueice/overview.html#acct">http://www.cisl.ucar.edu/docs/blueice/overview.html#acct</a></p>
<h2 style="text-align: left;"><a name="Studenttutorials-Computerusage"></a>Computer usage</h2>
<ul>
<li>only have one job in the <strong>dycore</strong> queue at a time and the <strong>dycore</strong> queue job can maximum use 3 nodes.</li>
<li>use <strong>regular</strong> for jobs using more than 3 nodes or</li>
<li>each modeling group can submit one <strong>Premium</strong> queue job (using "any" number of nodes) in each 24h period. The job should be submitted before 3PM.</li>
</ul>
<h2 style="text-align: left;"><a name="Studenttutorials-Monitorjobs"></a>Monitor jobs</h2>
<ul>
<li>see "output to screen" while the model is running: bpeek</li>
<li>bjobs: shows jobs you have running and pending in the system</li>
<li>bjobs -u all : show all jobs on the machine</li>
<li>bjobs -q dycore -u all : see all jobs in the dycore queue</li>
<li>bhist -n 3 -a : shows jobs submitted and completed over last few days</li>
</ul>
<p>Troubleshooting: Contact Mike Page, ext. 2464, mpage@ucar.edu</p>
<h2 style="text-align: left;"><a name="Studenttutorials-MonitorGAUusage"></a>Monitor GAU usage</h2>
<p>Monitor GAU usage from the CISL portal: <a class="external-link" rel="nofollow" href="https://portal.scd.ucar.edu:8443/scd-portal">https://portal.scd.ucar.edu:8443/scd-portal</a> (requires UCAS password)</p>
<p>Charges are assessed overnight and will be available for review the morning after a run completes.</p>
<p>GAUs charged = wallclock hours used * number of nodes used * number of processors in that node * computer factor * queue charging factor</p>
<p>The computer factor for bluevista is 0.87.</p>
<h1 style="text-align: left;"><a name="Studenttutorials-Filenameconventionsformodeloutputdata"></a>File name conventions for model output data</h1>
<p><strong>model-test case-horizontal resolution-vertical resolution-version.nc</strong></p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd">model</td>
<td class="confluenceTd">see examples below</td>
</tr>
<tr>
<td class="confluenceTd">test case</td>
<td class="confluenceTd">see Table 1 in test case document</td>
</tr>
<tr>
<td class="confluenceTd">horizontal resolution</td>
<td class="confluenceTd">low,medium,medium_high,high or ultra_high</td>
</tr>
<tr>
<td class="confluenceTd">vertical resolution</td>
<td class="confluenceTd">Lxx where xx is number of levels</td>
</tr>
<tr>
<td class="confluenceTd">version</td>
<td class="confluenceTd">any non-default setting: for example, double_divergence_damping, isnetropic_vertical_coordinate, ...</td>
</tr>
</tbody>
</table>
</div>
<p>Examples:</p>
<ul>
<li>cam_eul_dycore_1-0-0_low_L26.nc</li>
<li>csu_dycore_1-0-0_low_L26.nc</li>
<li>geos_fv_dycore_1-0-0_low_L26.nc</li>
<li>homme_dycore_1-0-0_low_L26.nc</li>
<li>gef_dycore_1-0-0_low_L26.nc</li>
<li>bq_dycore_1-0-0_low_L26.nc</li>
<li>icon_dycore_1-0-0_low_L26.nc</li>
<li>olam_dycore_1-0-0_low_L26.nc</li>
<li>geos_fv_cubed_dycore_1-0-0_low_L26.nc</li>
<li>gme_dycore_1-0-0_low_L26.nc</li>
<li>mitgcm_dycore_1-0-0_low_L26.nc</li>
</ul>
<p>See hardcopy instruction document (Tutorials) for details.</p>
<h1><a name="Studenttutorials-Filenameconventionsformodelinitialandforcingdata"></a>File name conventions for model initial and forcing data</h1>
<p>For initial condition files use the file name conventions mentioned above with init appended to the files name (before .nc).</p>
<p>Example:</p>
<ul>
<li>cam_fv_dycore_2-0-1234_medium_high_L26_double_divergence_damping_init.nc</li>
</ul>
<p>If more initial condition files are used write:</p>
<ul>
<li>cam_fv_dycore_2-0-1234_medium_high-L26_double_divergence_damping_init2.nc</li>
<li>cam_fv_dycore_2-0-1234_medium_high-L26_double_divergence_damping_init3.nc</li>
<li>cam_fv_dycore_2-0-1234_medium_high-L26_double_divergence_damping_init4.nc</li>
</ul>
<p>For forcing data files replace init with forc</p>
<h1><a name="Studenttutorials-Submissionoftestcasedatafiles"></a>Submission of test case datafiles</h1>
<p>NOTE:</p>
<p><strong>WHEN YOU HAVE COPIED A FILE TO THE MASS STORE, PLEASE DON'T OVERWRITE IT</strong></p>
<p>*There is a limit of 12GB for file size when transferring to the MSS. If your file is larger split the file by either splitting in time, e.g.:</p>
<ul>
<li>% ncks -d time,0,729 hgt.2006.nc hgt.2006-01.nc</li>
<li>% ncks -d time,730,1459 hgt.2006.nc hgt.2006-02.nc</li>
</ul>
<p>or extracting var1, var2, var3, etc. with*</p>
<ul>
<li>ncks -v var1,var2,var3 in.nc out.nc</li>
</ul>
<p>(please duplicate PS, PHIS, hyam, hyai, hybm, hybi in the files if your model outputs/uses these variables)</p>
<p>When a test-case run is complete and the data has been 'approved' as a successful run please copy the initial, forcing (if applicable), output and meta data to Mass Storage System (MSS) with the command:</p>
<ul>
<li>msrcp -project projectnumber -period 360 data_file mss:/PEL/asp2008/model/test case/horizontal_resolution/filename</li>
</ul>
<p>where</p>
<ul>
<li>projectnumber: See Table at the end of this instruction document.</li>
</ul>
<ul>
<li>datafile	: Output data file from the model.</li>
</ul>
<ul>
<li>model		: Use the appropriate abbreviation for your model in the list below (if<br /> unsure ask your modeling mentor):</li>
</ul>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd">cam_eul_dycore</td>
<td class="confluenceTd">csu_dycore</td>
<td class="confluenceTd">geos_fv_dycore</td>
</tr>
<tr>
<td class="confluenceTd">homme_dycore</td>
<td class="confluenceTd">cam_fv_dycore</td>
<td class="confluenceTd">gef_dycore</td>
</tr>
<tr>
<td class="confluenceTd">bq_dycore</td>
<td class="confluenceTd">icon_dycore</td>
<td class="confluenceTd">olam_dycore</td>
</tr>
<tr>
<td class="confluenceTd">cam_isen_dycore</td>
<td class="confluenceTd">geos_fv_cubed_dycore</td>
<td class="confluenceTd">gme_dycore</td>
</tr>
<tr>
<td class="confluenceTd">mitgcm_dycore</td>
<td class="confluenceTd">&nbsp;</td>
<td class="confluenceTd">&nbsp;</td>
</tr>
</tbody>
</table>
</div>
<ul>
<li>test case	: Use conventions in table 1 above. All choices are:</li>
</ul>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd">1-0-0</td>
<td class="confluenceTd">1-3-0</td>
<td class="confluenceTd">1-6-0</td>
<td class="confluenceTd">&nbsp;</td>
<td class="confluenceTd">2-0-1234</td>
<td class="confluenceTd">&nbsp;</td>
</tr>
<tr>
<td class="confluenceTd">2-3-1234</td>
<th class="confluenceTh"> 2-6-1234 </th>
<td class="confluenceTd">&nbsp;</td>
<td class="confluenceTd">3-0-56</td>
<td class="confluenceTd">&nbsp;</td>
</tr>
<tr>
<td class="confluenceTd">3-3-56</td>
<th class="confluenceTh"> 3-6-56 </th>
<td class="confluenceTd">4-0-0</td>
<td class="confluenceTd">5-0-0</td>
<td class="confluenceTd">6-0-0</td>
</tr>
<tr>
<td class="confluenceTd">6-1-0</td>
<td class="confluenceTd">6-2-0</td>
<td class="confluenceTd">6-3-0</td>
<td class="confluenceTd">6-4-0</td>
<td class="confluenceTd">&nbsp;</td>
<td class="confluenceTd">&nbsp;</td>
</tr>
</tbody>
</table>
</div>
<ul>
<li>resolution 	: Use conventions in Table 2 in hard copy instruction document.</li>
</ul>
<ul>
<li>filename	 : The filename must follow the conventions listed in the Section above.</li>
</ul>
<ul>
<li>Example: The file cam_fv_dycore_2-0-1234_medium_high-L26-double_divergence_damping.nc should be moved to the following directory on the MSS:</li>
</ul>
<p>mss:/PEL/asp2008/cam_fv_dycore/2-0-1234/medium_high/</p>
<ul>
<li>Some useful MSS commands: 	     
<ul>
<li>List files in /PEL/asp2008		: msls -R /PEL/asp2008</li>
<li>Remove file /PEL/asp2008/1.txt	: msrm /PEL/asp2008/1.txt</li>
<li>Move (rename) files	(1.txt to 2.txt)	: msmv /PEL/asp2008/1.txt /PEL/asp2008/2.txt</li>
</ul>
</li>
</ul>
<p>For more information see: <a class="external-link" rel="nofollow" href="http://www.cisl.ucar.edu/mss/dcs4/current-html/dcsref.html">http://www.cisl.ucar.edu/mss/dcs4/current-html/dcsref.html</a></p>
<h1><a name="Studenttutorials-Submissionofmetadataassociatedwitheachtestcase"></a>Submission of metadata associated with each test case</h1>
<p>In addition to providing the test case data files, students are responsible for providing the metadata associated with each test case. If you have any questions with the instructions below, please contact Sylvia Murphy (murphys@ucar.edu) ext 1882.</p>
<h2><a name="Studenttutorials-Gettingyourdycore'sbaselinemetadata"></a>Getting your dycore's baseline metadata</h2>
<p>Metadata describing each dycore has already been collected. Follow the 4 steps outlined below to view this metadata. You may wish to bookmark the results since you will be using it as a reference.</p>
<p>1. Go to <a class="external-link" rel="nofollow" href="http://cdp.ucar.edu:28080/query/modelComparison.htm">http://cdp.ucar.edu:28080/query/modelComparison.htm</a></p>
<p>2. From the left hand column, select the dycore you are using.</p>
<p>3. Scroll down to the bottom of the right-hand column and hit the "Select All" button.</p>
<p>4. Hit the "Compare" button".</p>
<p>This is baseline metadata associated with your dycore.</p>
<h2><a name="Studenttutorials-Submittingthedifferences"></a>Submitting the differences</h2>
<p>For each test case that you run, you will need to provide a metadata text file listing the differences between the baseline metadata found in the table and the metadata for the test case.</p>
<h3><a name="Studenttutorials-Filenameconvention"></a>Filename convention</h3>
<p>Name each metadata text file by same name you call the netCDF output data, but just with a .txt after it.  Examples:</p>
<ul>
<li>csu_dycore_1-0-0_medium_high.txt</li>
<li>gef_dycore_6-1-0_ultra_high.txt</li>
</ul>
<h3><a name="Studenttutorials-Wheretoputthemetadatatextfiles"></a>Where to put the metadata text files</h3>
<p>The metadata text files should be placed on the NCAR Mass Store in the same location as the input and output datafiles.</p>
<h3><a name="Studenttutorials-Contentofthemetadatatextfiles"></a>Content of the metadata text files</h3>
<h4><a name="Studenttutorials-1.Anymetadatathatisdifferentfromthebaseline"></a>1. Any metadata that is different from the baseline</h4>
<p>Example 1. The baseline "Time Step" for the GEF dycore is "430 seconds". If this value is "1800 seconds" for a particular test case, then the associated text file would have in it a line that says:</p>
<p>Time Step: 1800 seconds</p>
<p>Example 2. The baseline "Temporal Approximation" for the GEOS-5 FV Dycore is "Two-time level". If this value is "Three-time level" for a particular test case, then the associated text file would have in it a line that says:</p>
<p>Temporal Approximation: Three-time level</p>
<h4><a name="Studenttutorials-2.CoriolisandWindForcing"></a>2. Coriolis and Wind Forcing</h4>
<p>You will not see Coriolis and Wind Forcing in the online table of dycore metadata. That is because none of the dycores have a baseline value for these parameters. For many of the test cases, you will need to add these. Here are the options.</p>
<p>Coriolis:</p>
<ul>
<li>Non-rotated</li>
<li>Off</li>
<li>Rotated 15 degrees</li>
<li>Rotated 30 degrees</li>
<li>Rotated 45 degrees</li>
<li>Rotated 60 degrees</li>
<li>Rotated 75 degrees</li>
</ul>
<p>Wind Forcing:</p>
<ul>
<li>Prescribed</li>
<li>Prognostic</li>
</ul>
<h4><a name="Studenttutorials-3.Listtheinputdatasets"></a>3. List the input datasets</h4>
<p>You have already been instructed to put your test case input data files in the same directory as the output data for that test case. While we can navigate to this directory it would be helpful to have a list of the input data files used to run the test case.</p>
<p>Example:</p>
<p>Input data file:</p>
<p>Mytopography.nc<br /> Mywinds.nc</p>
<h4><a name="Studenttutorials-Examplesofanentiremetadatatextfile(csudycore330low.txt).Notethatspacesandextralinesinthemetadatatextfileareok."></a>Examples of an entire metadata text file (csu_dycore_3-3-0_low.txt). Note that spaces and extra lines in the metadata text file are ok.</h4>
<p>Time Step: 70 seconds</p>
<p>Spatial Approximation: Piecewise Parabolic Method (PPM)</p>
<p>Coriolis: Rotated 45 degrees</p>
<p>Wind Forcing: Prognostic</p>
<p>Input datasets:</p>
<p>csu_dycore_3-3-0_low_initial_conditions.nc<br /> Mytopography.nc</p>
<h1><a name="Studenttutorials-Modelassignment"></a>Model assignment</h1>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<th class="confluenceTh">Name </th> <th class="confluenceTh"> Project No.</th>
</tr>
<tr>
<td class="confluenceTd">Joakim Refslund Nielsen</td>
<td class="confluenceTd">35081308</td>
</tr>
<tr>
<td class="confluenceTd">Jung-Eun Kim</td>
<td class="confluenceTd">35081308</td>
</tr>
<tr>
<td class="confluenceTd">Junsu Kim</td>
<td class="confluenceTd">35081308</td>
</tr>
<tr>
<td class="confluenceTd">Lantao Sun</td>
<td class="confluenceTd">35081308</td>
</tr>
<tr>
<td class="confluenceTd">Lee Thomas Murray</td>
<td class="confluenceTd">35161077</td>
</tr>
<tr>
<td class="confluenceTd">Lin Su</td>
<td class="confluenceTd">35161077</td>
</tr>
<tr>
<td class="confluenceTd">Lucas Harris</td>
<td class="confluenceTd">35161077</td>
</tr>
<tr>
<td class="confluenceTd">Marcia DeLonge</td>
<td class="confluenceTd">35171136</td>
</tr>
<tr>
<td class="confluenceTd">Matthew Charles Long</td>
<td class="confluenceTd">35171136</td>
</tr>
<tr>
<td class="confluenceTd">Matthew Ross Norman</td>
<td class="confluenceTd">35171136</td>
</tr>
<tr>
<td class="confluenceTd">Alberto Casado</td>
<td class="confluenceTd">35201090</td>
</tr>
<tr>
<td class="confluenceTd">Allan Christensen</td>
<td class="confluenceTd">35201090</td>
</tr>
<tr>
<td class="confluenceTd">Aneesh C. Subramanian</td>
<td class="confluenceTd">35201090</td>
</tr>
<tr>
<td class="confluenceTd">Ole Kristian Kvissel</td>
<td class="confluenceTd">35201090</td>
</tr>
<tr>
<td class="confluenceTd">Dustin Edward Williams</td>
<td class="confluenceTd">36241002</td>
</tr>
<tr>
<td class="confluenceTd">Guan Song</td>
<td class="confluenceTd">36241002</td>
</tr>
<tr>
<td class="confluenceTd">Hajoon Song</td>
<td class="confluenceTd">36241002</td>
</tr>
<tr>
<td class="confluenceTd">Hui Wan (cancelled)</td>
<td class="confluenceTd">36241002</td>
</tr>
<tr>
<td class="confluenceTd">Brian Sorensen</td>
<td class="confluenceTd">37321000</td>
</tr>
<tr>
<td class="confluenceTd">Cheng Zhou</td>
<td class="confluenceTd">37321000</td>
</tr>
<tr>
<td class="confluenceTd">Colm Francis Clancy</td>
<td class="confluenceTd">37321000</td>
</tr>
<tr>
<td class="confluenceTd">David James Devlin</td>
<td class="confluenceTd">37321000</td>
</tr>
<tr>
<td class="confluenceTd">Paul Ullrich</td>
<td class="confluenceTd">37591042</td>
</tr>
<tr>
<td class="confluenceTd">Prabhakar Shrestha</td>
<td class="confluenceTd">37591042</td>
</tr>
<tr>
<td class="confluenceTd">Priscilla Aileen Mooney</td>
<td class="confluenceTd">37591042</td>
</tr>
<tr>
<td class="confluenceTd">Oksana Guba</td>
<td class="confluenceTd">38041005</td>
</tr>
<tr>
<td class="confluenceTd">Svetlana Dubinkina</td>
<td class="confluenceTd">38041005</td>
</tr>
<tr>
<td class="confluenceTd">Jasper Frank Kok</td>
<td class="confluenceTd">38041005</td>
</tr>
<tr>
<td class="confluenceTd">Angela Marie Zalucha</td>
<td class="confluenceTd">38401000</td>
</tr>
<tr>
<td class="confluenceTd">Atul Kapur</td>
<td class="confluenceTd">38401000</td>
</tr>
<tr>
<td class="confluenceTd">Ayoe Buus Hansen</td>
<td class="confluenceTd">38401000</td>
</tr>
<tr>
<td class="confluenceTd">Benjamin Kravitz</td>
<td class="confluenceTd">38401000</td>
</tr>
<tr>
<td class="confluenceTd">Qiang Deng</td>
<td class="confluenceTd">38401001</td>
</tr>
<tr>
<td class="confluenceTd">Sandeep Sahany (cancelled)</td>
<td class="confluenceTd">38401001</td>
</tr>
<tr>
<td class="confluenceTd">Sean Crowell</td>
<td class="confluenceTd">38401001</td>
</tr>
<tr>
<td class="confluenceTd">Jairo Geraldo Gomes</td>
<td class="confluenceTd">38411000</td>
</tr>
<tr>
<td class="confluenceTd">Jared Pierce Whitehead</td>
<td class="confluenceTd">38411000</td>
</tr>
<tr>
<td class="confluenceTd">Jin-Young Kim</td>
<td class="confluenceTd">38411000</td>
</tr>
</tbody>
</table>
</div>
<p>ML-391-Artic Room reserved for GEF.</p>
</div> <!--// end div id=cog_post_body //-->
