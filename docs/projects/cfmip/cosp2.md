<h1 class="title">COSP2.0 for use in CFMIP3/CMIP6</h1>

<div id="cog_post_body">
    <div id="cog_post_body">
        <p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	Tco-chairs of the COSP Program Management Committee, should seek your concurrence to allow modeling groups to use version 2 of the COSP software for CFMIP3/CMIP6 experiments. COSP Version 2 has been developed by Robert Pincus and Dustin Swales with help from others. It can be thought of as a major code restructuring that facilitates it use in various forms. COSP2 is the basis for the future development. Robert&rsquo;s e-mail below summarizes the situation with COSP2 very well. It includes details of the implementation and links to figures demonstrating no significant answer changes as well as a journal article in review describing COSP2.</p>
<p>
	<b>Note that modeling groups can also use the existing version of COSP, version 1.4 or 1.4.1, for CFMIP3/CMIP6 experiments, so no action is required of modeling groups by approving the use of COSP2 in CFMIP3/CMIP6 experiments.</b></p>
<p>
	Thanks,</p>
<p>
	Steve Klein and Alejandro Bodas-Salcedo</p>
<p>
	==== forward message from Robert Pincus ===</p>
<p>
	&nbsp;</p>
<p>
	Dear fellow members of the PMC -</p>
<p>
	With this note Dustin Swales and I propose the release of COSP2. The code has been implemented in several models and we are confident that it is producing results consistent with COSP1 at commensurate computational cost.</p>
<p>
	Alejandro has implemented COSP2 in HadGEM using the COSP 1.4 compatible interface, essentially dropping COSP2 into place. Comparison quicklooks for a month-long integration are available at <a href="https://www.esrl.noaa.gov/psd/people/dustin.swales/COSP/implementation/UM/COSP_quicklooks_UM.html">https://www.esrl.noaa.gov/psd/people/dustin.swales/COSP/implementation/UM/COSP_quicklooks_UM.html</a>. In this implementation COSP2 is about 20% slower than COSP1, primarily due to the extra copying of memory as data is moved from the older to the newer data structures.</p>
<p>
	Dustin has implemented COSP2 in the NCAR CESM. Comparison quicklooks for a day-long integration in an aquaplanet configuration are available at <a href="https://www.esrl.noaa.gov/psd/people/dustin.swales/COSP/implementation/CAM/COSP_quicklooks_CAM.html">https://www.esrl.noaa.gov/psd/people/dustin.swales/COSP/implementation/CAM/COSP_quicklooks_CAM.html</a>. Dustin&rsquo;s implementation more directly interfaces COSP2 to CESM, partly to accommodate the radiatively-active snow in that model. This makes COSP2 significantly faster than COSP 1 (<a href="https://www.esrl.noaa.gov/psd/people/dustin.swales/COSP/implementation/CAM/COSP_performance_CAM.html">https://www.esrl.noaa.gov/psd/people/dustin.swales/COSP/implementation/CAM/COSP_performance_CAM.html</a>). The memory footprints are roughly the same.</p>
<p>
	One important caveat to the CESM implementation is that Dustin replaced the allocatable arrays with pointers in the derived types used to interface with COSP. The change is simple but more prone to memory leaks than the default implementation. Before the change COSP2 was several times slower than COSP1 in the CESM environment. This change could be made the default either now or at some later date; we are inclined to document this for users and get feedback on a wider range of platforms.</p>
<p>
	A manuscript describing COSP2 has been reviewed at Geosci. Model Dev. (<a href="https://doi.org/10.5194/gmd-2017-148">https://doi.org/10.5194/gmd-2017-148</a>). <b>The code is available at <a href="https://github.com/CFMIP/COSPv2.0">https://github.com/CFMIP/COSPv2.0</a></b>. We have recently changed the directory structure a little to better align the code with the description in the manuscript. This has been tested in CESM but not yet in the HadGEM although we have no reason to think that changing paths should have any impact.</p>
<p>
	We know there&rsquo;s an upcoming PMC phone call. We would like to release the code at this time (i.e. before the phone call) so the release coincides with the publication of the manuscript. A release will also allow us to get a DOI for the code, which the journal would like.</p>
<p>
	--- Robert Pincus</p>
<p>
	University of Colorado/NOAA Earth System Research Lab</p>
<p>
	http://cires.colorado.edu/researcher/robert-pincus</p>
</div> <!--// end div id=cog_post_body //-->
