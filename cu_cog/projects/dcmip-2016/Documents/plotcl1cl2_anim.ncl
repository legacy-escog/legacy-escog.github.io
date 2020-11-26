load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_code.ncl"   
load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_csm.ncl"
load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/contributed.ncl"   
load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/shea_util.ncl"

;plotting routine for chlorine
;chlorine should end up being Cly = Cl+2*Cl2
;plot qcl/4e-6, qcl2/4.e-6, qcly/4.e-6 contour day 9
;contour intervals should be -0.1,-1.0e-12,0.1,0.2,...1.2 for qcl
;contour intervals should be -0.04, -1.e-12,0.04,0.08,0.12,...0.48 for qcl2
;contour intervals should be 0.78,0.82,0.86,...1.20 for qcly
;plot global error norms l2(t),linf(t),mass change delM(t) for qcly as f(t) from
;day 0 to 30 at 3 hour spacing.

;<q> = integral(0,ztop) for q*dz/z (column average q)
;post-processing comes out as column integrated...was it done correctly?
;l2(t) = sqrt(integral(<qcly>-4.ee-6)**2 dz)/sqrt(integral(4.e-6)**2 dz)
;linf(t) = max(abs(<qcly>-4E-6))/4.e-6
;delM(t) = integral(qcly*dz)-M0/M0
;<qcly>=<qcl+2*qcl2>
;M0=integral(0,ztop) for 4.0e-6 * dz

;dz will be abs(ilev(i1)-ilev(i2))
;total z should be 30000, but safer to do sum of dz?
;

begin

pre="./"
f = addfile(pre+"output.g6.161/csu.161.r100.L30.latlon.hydro.nc","r")

;find dimensions:
	lat  = f->lat
	lon  = f->lon
	lev  = f->lev
	ilev = f->ilev
	nlat   = getfilevardimsizes(f, "lat" )
	nlon   = getfilevardimsizes(f, "lon" )
	nlev   = getfilevardimsizes(f, "lev" )
        ntime  = getfilevardimsizes(f, "time" )

;QCl
	qcl = f->Q1
;QCl2
	qcl2= f->Q2
;PS
	PS  = f->PS/100.
	
	
	
;do j=0,nlon-1 
;	do i=0,nlat-1 
;		do k=0,nlev-1
;		
;		end do
;	end do
;end do

;scale QCl:
Q1=qcl/4.e-6
Q2=qcl2/4.e-6
Qtot=(Q1+2.*Q2)



	plot  = new (4, graphic)               			; define plot - need 4 panels
	
	res1                      = True
	res1@gsnDraw              = False          		; panel plot 
	res1@gsnFrame             = False			; don't draw yet
	res1@cnFillOn             = True
	res1@cnLinesOn            = True
	res1@gsnSpreadColors      = True
	res1@lbLabelAutoStride    = True
	res1@gsnCenterString      = ""
	res1@tiMainString         = ""
	res1@vpWidthF             = 0.38
	res1@vpHeightF            = 0.19
	res1@cnLevelSelectionMode = "ExplicitLevels"
	res1@cnInfoLabelOn        = False			; don't give each
	res1@cnLineLabelsOn       = False			; panel its own
	res1@lbLabelBarOn         = True			; label bar

	pres                          = True
	pres@gsnMaximize              = True  
	pres@gsnPanelLabelBar         = False			; Communal label bar
	pres@gsnPanelLeft             = 0.1
	pres@gsnPanelRight            = 0.9
	pres@pmLabelBarOrthogonalPosF = -0.03
	pres@gsnFrame                 = False
	pres@lbLabelStride            = 1

	res1@sfXArray        = lon            			; uses lon as plot x-axis
	res1@sfYArray        = lat            			; uses lat for y axis
	res1@trYReverse      = False          			; reverses y-axis, false
	res1@tiYAxisString   = ""   	       			; y-axis title
	res1@tiXAxisString   = ""             			; x-axis title


	pltTitle="UZIM Test161, QClx" 			; Plot title if required
	pres@txString = pltTitle

	; Change the output type and name

	
	do i=0,ntime-1
	;wks  = gsn_open_wks("X11","uzim-test161-qclx")   	; output using X11
	;wks  = gsn_open_wks("eps","uzim-test161-qclx")   	; output using eps
	wks  = gsn_open_wks("png","test161anim"+sprinti("%02i",i))   	; output using png
	gsn_define_colormap(wks,"gui_default")  


	res1@cnLevels  = (/-0.1,1.e-12,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0,1.1,1.2/)
	res1@gsnCenterString = "Day "+i+", Cl"
	plot(0) = gsn_csm_contour(wks,Q1(i,:,:),res1)		; plot QCl
	
	res1@cnLevels  = (/-0.04,1.e-12,0.04,0.08,0.12,0.16,0.2,0.24,0.28,0.32,0.36,0.4,0.44,0.48/)
	res1@gsnCenterString = "Day "+i+", Cl2"
	plot(1) = gsn_csm_contour(wks,Q2(i,:,:),res1)		; plot QCl
	
	res1@cnLevels  = (/0.74,0.78,0.82,0.86,0.90,0.94,0.98,1.02,1.06,1.1,1.14,1.18,1.22,1.26/)
	res1@gsnCenterString = "Day "+i+", Cly"
	plot(2) = gsn_csm_contour(wks,Qtot(i,:,:),res1)		; plot QCl

	res1@cnLevels  = (/900,910,920,930,940,950,960,970,980,990,1000,1010,1020,1030/)
	res1@gsnCenterString = "Day "+i+", SfcP"
	plot(3) = gsn_csm_contour(wks,PS(i,:,:),res1)		; plot QCl
	

	gsn_panel(wks,plot,(/2,2/),pres)			; 2x2 plot

		; Add latitude and longitude labels

	txres3                = True
	txres3@txAngleF       = 90.
	txres3@txFontHeightF  = 0.02
	gsn_text_ndc(wks,"Latitude",0.08,0.49,txres3)

	txres3@txAngleF       = 0.
	gsn_text_ndc(wks,"Longitude",0.5,0.2,txres3)

	frame(wks)
    delete(wks)   ; Make sure PNG file is closed
	end do
	;---Convert PNG images to animated GIF
    cmd = "convert -delay 25 test161anim*.png test161_animated.gif"
    system(cmd)

end
