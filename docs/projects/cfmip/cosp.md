<h1 class="title">CFMIP Observational Simulator Package (COSP)</h1>

<div id="cog_post_body">
    <div id="cog_post_body">
        <p>
	<img align="left" height="240" src="https://github.com/legacy-escog/legacy-escog.github.io/raw/main/docs/site_media/projects/cfmip/cosp2.png" style="margin-right: 10px;" width="800" /></p>
<p>
	To facilitate the exploitation of A Train data in numerical models, we are developing a system that allows to simulate the signal that CloudSat/CALIPSO would see in a model-generated world. It is a flexible tool to simulate active instruments in models (climate, forecast, cloud-resolving). The ISCCP simulator is also included in the package.</p>
<p>
	There are several groups involved in the project:</p>
<ul>
	<li>
		Met Office Hadley Centre</li>
	<li>
		LMD/IPSL (Laboratoire de M&eacute;t&eacute;orologie Dynamique/Institut Pierre Simon Laplace)</li>
	<li>
		LLNL (Lawrence Livermore National Laboratory)</li>
	<li>
		CSU (Colorado State University)</li>
	<li>
		UW (University of Washington)</li>
</ul>
<p>
	The approach is to create a modular code in FORTRAN90 that can be plugged in different types of models, from GCMs to cloud CRMs. The figure below shows this modular approach in a very schematic way. If you want to know a bit more, please read the <a href="/site_media/projects/cfmip/cfmip2_20070822.pdf">The Cloud Feedback Model Inter-comparison Project-Plans for CFMIP-2</a> or contact alejandro.bodas(at)metoffice.gov.uk.</p>
<p>
	<b><font color="midnightblue" size="+1">News</font></b></p>
<ul>
	<li>
		<b><a href="/projects/cfmip/cosp2">Use of COSP2.0 in CFMIP3/CMIP6</a></b>
		<p>
			Version 2 of the COSP software has been released for CFMIP3/CMIP6 experiments. <em> posted by Masa Watanabe, 8th November, 2017</em></p>
	</li>
	<li>
		<b>COSP code moved to Github and release of COSP v1.4.1</b>
		<p>
			COSP1.4.1 is a modest update to COSP1.4 that includes changes enabling new diagnostics requested by CFMIP3/CMIP6, most notably joint histograms of particle size and optical thickness from the MODIS simulator. The code is available from <a href="https://github.com/CFMIP">Github</a>. Modeling centers are encouraged to update to COSP 1.4.1 to provide these new diagnostics but may provide results from COSP 1.4. Note that the MODIS simulator now produces particle size estimates consistent with retrievals using 3.7 micron measurements, consistent with NASA processing of the underlying data for MODIS &ldquo;Collection 6.&rdquo; <em>posted by Alejandro Bodas-Salcedo, January 2017</em></p>
	</li>
</ul>
<p>
	<b><font color="midnightblue">The CFMIP COSP page before January 2017 is available <a href="http://cfmip.metoffice.com/COSP.html">here</a>.</font></b></p>
<p>
	<img align="left" height="420" src="https://github.com/legacy-escog/legacy-escog.github.io/raw/main/docs/site_media/projects/cfmip/cosp.png" style="margin-right: 10px;" width="850" /></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
</div> <!--// end div id=cog_post_body //-->
