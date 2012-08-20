**********************Rinton Press****************************
The style/template document is for Latex2e,
which will allow authors to prepare manuscripts that can be brought
directly into the Rinton Press production process for CRC titles,

and  preserving a lot of their structuring for the regular typeset
books size [9"x6"]. 
This will enable more accurate production of page proofs, reducing your need during proofreading to locate 
typographic mistakes.

The Rinton Latex2e class file and the sample coded files are

located in the website in zip format called Rinton-B10x7.zip. Download and
unzip this. Once unzipped successfully, you will find the following files:
readme.txt		:	this file
Rinton-B9x6.cls	:	Latex2e class file
Rinton-B9x6.tex	:	driver file 

preface.tex		:	sample coded file for preface

chapter1.tex		:	sample coded file for a chapter

appendix.tex		:	sample coded file for appendices

reference.tex		:	sample coded file for references

index.tex		:	index data file generated using makeindex

Rinton-B9x6.ps  	:	sample typeset pages of the above
The complete set of tex sample coded files was supplied to enable
authors to use it as a template and for ready reference. With this
class file you can use any package comes with standard latex2e
distribution to avail different features.


By default the system will update the recent section head of the page
as a running head. 
If you like to have an alternate text for running head
please insert the text with square brackets immediately after \section
command (e.g. \section[Optional text for running head]{Actual section head}).

In addition to the above, the following are the few general
instructions, which are to be followed in coding your tex documents:

a)	
Please ensure the quotation marks are paired correctly, 
	
e.g. "good quotes" rather than ''bad quotes``.
b)	
Italicized words should not be done in tex's mathmode as this
	
will result in unusual character spacing. Use the proper control
	
sequence of "\it".  
c)	Use a hyphen (-) for compound words (e.g. `two-dimentional'), 
	
an en-dash (--) to link numbers, nouns or names (e.g. 220--240 Volts,  
	electron--positron collisions, Einstein--Rosen--Podolsky paradox), 
	and an em-dash (---) to link sentences or clauses---this is what we 
	would regard as a `normal' dash.  
d)	The standard abbreviations are:

	Equation(s)		-	Eq./Eqs.
	Figure(s)		-	Fig./Figs.
	Reference(s)		-	Ref./Refs.
	Section(s)		-	Sec./Secs.

	Please spell in full if any of the above is the first word of
	the sentence.  Also, use a fixed space "~" between the reference and 
	identifiers (e.g. -- Fig.~1.1), etc.
e)	Latin words to be italized.
	
	e.g.	:	et al., a priori, in situ   etc.


