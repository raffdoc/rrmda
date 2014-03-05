












This is a Reproducable researche Rmarkdow example: Mortalty in USA Hospitals
========================================================



**Abstract**
Error in cardiovascular research is enourmous.

__Objective__
Create a reproducable research article with Rmarkdown and share it.  

__Methods__
I will be using data from [Medicare](http://hospitalcompare.hhs.gov) which contains two datasets


1. This table provides general Hospital information in response to a Hospital Compare search.
2. The Outcome of Care Measures nationwide (USA).


The codebook is provided and will be avalable as supplimentary file. 
I will be using Knitr (<a href="http://yihui.name/knitr/">Andrew et al. 2013</a>) for Rmarkdown compilation.

__Results__


__Conlutions__

Introduction
------------


Material and methods
------------
This is the first table __Table__ 1.




Results
------------
See next Figure 1.






<figure><img src='fig/plot1.png'  style='display: block; margin: auto;'><figcaption>Figure 1: A histogram and density estimates for three outcomes.</figcaption></figure>


As you can deduce from the Figure 2.

<figure><img src='fig/plot2.png'  style='display: block; margin: auto;'><figcaption>Figure 2: A boxplot of median moratlity accross the regeons.</figcaption></figure>


There is previous image here Figure 2.


And yet another image Figure 3.
<figure><img src='fig/plot3.png'  style='display: block; margin: auto;'><figcaption>Figure 3: A scatterplot of death rate by number of the patients and hospital owner.</figcaption></figure>


Table 1
<table class='gmisc_table' style='border-collapse: collapse;'  id='table_1'>
	<thead>
	<tr><td colspan='9' style='text-align: left;'>
	Table 1: Adjusted and unadjusted estimates for melanoma specific death.</td></tr>
	<tr>
		<th style='border-top: 2px solid grey;'></th>
		<th colspan='2' style='font-weight: 900; border-top: 2px solid grey; text-align: center;'>&nbsp;</th><th style='border-top: 2px solid grey;; border-bottom: hidden;'>&nbsp;</th>
		<th colspan='2' style='font-weight: 900; border-bottom: 1px solid grey; border-top: 2px solid grey;'>Crude</th><th style='border-top: 2px solid grey;; border-bottom: hidden;'>&nbsp;</th>
		<th colspan='2' style='font-weight: 900; border-bottom: 1px solid grey; border-top: 2px solid grey;'>Adjusted</th>
	</tr>
	<tr>
		<th style='font-weight: 900; border-bottom: 1px solid grey; '>Variable</th>
		<th style='border-bottom: 1px solid grey; text-align: center;'>Total</th>
		<th style='border-bottom: 1px solid grey; text-align: center;'>Event</th>
		<th style='border-bottom: 1px solid grey;' colspan='1'>&nbsp;</th>
		<th style='border-bottom: 1px solid grey; text-align: center;'>HR</th>
		<th style='border-bottom: 1px solid grey; text-align: center;'>2.5 % to 97.5 %</th>
		<th style='border-bottom: 1px solid grey;' colspan='1'>&nbsp;</th>
		<th style='border-bottom: 1px solid grey; text-align: center;'>HR</th>
		<th style='border-bottom: 1px solid grey; text-align: center;'>2.5 % to 97.5 %</th>
	</tr>
	</thead><tbody>
	<tr><td colspan='9' style=''>Sex</td></tr>
	<tr>
		<td style='text-align: left;'>&nbsp;&nbsp;Male</td>
		<td style='text-align: right;'>126</td>
		<td style='text-align: right;'>28 (22 %)</td>
		<td style='' colspan='1'>&nbsp;</td>
		<td style='text-align: right;'>1</td>
		<td style='text-align: center;'>ref</td>
		<td style='' colspan='1'>&nbsp;</td>
		<td style='text-align: right;'>1</td>
		<td style='text-align: center;'>ref</td>
	</tr>
	<tr>
		<td style='text-align: left;'>&nbsp;&nbsp;Female</td>
		<td style='text-align: right;'>79</td>
		<td style='text-align: right;'>29 (37 %)</td>
		<td style='' colspan='1'>&nbsp;</td>
		<td style='text-align: right;'>1.94</td>
		<td style='text-align: center;'>1.15 to 3.26</td>
		<td style='' colspan='1'>&nbsp;</td>
		<td style='text-align: right;'>1.54</td>
		<td style='text-align: center;'>0.91 to 2.60</td>
	</tr>
	<tr>
		<td style='text-align: left;'>Age</td>
		<td style='text-align: right;'>52 (&plusmn;  17)</td>
		<td style='text-align: right;'>55 (&plusmn;  18)</td>
		<td style='' colspan='1'>&nbsp;</td>
		<td style='text-align: right;'>1.02</td>
		<td style='text-align: center;'>1.00 to 1.04</td>
		<td style='' colspan='1'>&nbsp;</td>
		<td style='text-align: right;'>1.01</td>
		<td style='text-align: center;'>1.00 to 1.03</td>
	</tr>
	<tr><td colspan='9' style=' '>Ulcer</td></tr>
	<tr>
		<td style='text-align: left;'>&nbsp;&nbsp;Present</td>
		<td style='text-align: right;'>115</td>
		<td style='text-align: right;'>16 (14 %)</td>
		<td style='' colspan='1'>&nbsp;</td>
		<td style='text-align: right;'>1</td>
		<td style='text-align: center;'>ref</td>
		<td style='' colspan='1'>&nbsp;</td>
		<td style='text-align: right;'>1</td>
		<td style='text-align: center;'>ref</td>
	</tr>
	<tr>
		<td style='text-align: left;'>&nbsp;&nbsp;Absent</td>
		<td style='text-align: right;'>90</td>
		<td style='text-align: right;'>41 (46 %)</td>
		<td style='' colspan='1'>&nbsp;</td>
		<td style='text-align: right;'>4.36</td>
		<td style='text-align: center;'>2.44 to 7.77</td>
		<td style='' colspan='1'>&nbsp;</td>
		<td style='text-align: right;'>3.20</td>
		<td style='text-align: center;'>1.75 to 5.88</td>
	</tr>
	<tr>
		<td style='border-bottom: 2px solid grey; text-align: left;'>Thickness</td>
		<td style='border-bottom: 2px solid grey; text-align: right;'>3 (&plusmn;   3)</td>
		<td style='border-bottom: 2px solid grey; text-align: right;'>4 (&plusmn;   4)</td>
		<td style='border-bottom: 2px solid grey;' colspan='1'>&nbsp;</td>
		<td style='border-bottom: 2px solid grey; text-align: right;'>1.17</td>
		<td style='border-bottom: 2px solid grey; text-align: center;'>1.10 to 1.25</td>
		<td style='border-bottom: 2px solid grey;' colspan='1'>&nbsp;</td>
		<td style='border-bottom: 2px solid grey; text-align: right;'>1.12</td>
		<td style='border-bottom: 2px solid grey; text-align: center;'>1.04 to 1.20</td>
	</tr>
	</tbody>
</table>



Discussion
------------





Supplimentary files
------------
Data files and codebooe are avalable [here](https://dl.dropboxusercontent.com/u/530192/public_data/DataMedicareMeasuresHospitals.zip).


References
----------

- Alastair Andrew, Alex Zvoleff, Brian Diggs, Cassio Pereira, Hadley Wickham, Heewon Jeon, Jeff Arnold, Jeremy Stephens, Jim Hester, Joe Cheng, Jonathan Keane, J.J. Allaire, Johan Toloe, Kohske Takahashi, Michel Kuhlmann, Nacho Caballero, Nick Salkowski, Noam Ross, Ramnath Vaidyanathan, Richard Cotton, Romain Francois, Sietse Brouwer, Simon Bernard, Taiyun Wei, Thibaut Lamadon, Tom Torsney-Weir, Trevor Davis, Weicheng Zhu, Wush Wu, Yihui Xie,  knitr: A general-purpose package for dynamic report
      generation in R.  (2013)


