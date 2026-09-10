#!/usr/bin/perl

#$BIBTEX2HTML = "~/bin/bibtex2html -nobibsource -nodoc -r -d "
$BIBTEX2HTML = "bibtex2html -nobibsource -nodoc -r -d "
.'-nf URL "at the publisher" -nf HTML "html version" -nf PDF "preprint (PDF)"'; 


# by type
#`bib2bib -c '\$type = "ARTICLE"' -ob articles.bib hahsler.bib`;
#`bib2bib -c '\$type = "INCOLLECTION"' -ob chapters.bib hahsler.bib `;
#`bib2bib -c '\$type = "INPROCEEDINGS"' -ob proceedings.bib hahsler.bib `;
#`bib2bib -c 'not \$type = "INPROCEEDINGS" & not \$type = "INCOLLECTION" & not \$type = "ARTICLE"' -ob misc.bib hahsler.bib `;


# by date

open SINK, ">publication_list.md" || die "cant write!\n";
$exit_status = system("$BIBTEX2HTML -d -noabstract -nokeywords hahsler.bib");

if ($exit_status != 0) {
	exit
}

#system("$BIBTEX2HTML -d hahsler.bib");
print SINK `cat hahsler.html | grep -v "<hr>" | grep -v "filliatr"`;



# by field
`bib2bib -c '\$type != "techreport"' -c 'category : "software engineering"' -ob patterns.bib hahsler.bib`;

`bib2bib -c '\$type != "techreport"' -c 'category : "association rules"' -ob associations.bib hahsler.bib`;

`bib2bib -c '\$type != "techreport"' -c 'category : "recommender systems"' -ob recommender.bib hahsler.bib`;
`bib2bib -c '\$type != "techreport"' -c 'category : "marketing"' -ob marketing.bib hahsler.bib`;

`bib2bib -c '\$type != "techreport"' -c 'category : "digital libraries"' -ob dlib.bib hahsler.bib`;

`bib2bib -c '\$type != "techreport"' -c 'category : "stream mining"' -ob stream.bib hahsler.bib`;

`bib2bib -c '\$type != "techreport"' -c 'category : "seriation"' -ob seriation.bib hahsler.bib`;
`bib2bib -c '\$type != "techreport"' -c 'category : "visualization"' -ob visualization.bib hahsler.bib`;
`bib2bib -c '\$type != "techreport"' -c 'category : "other"' -ob other.bib hahsler.bib`;
`bib2bib -c '\$type != "techreport"' -c 'category : "optimization"' -ob optimization.bib hahsler.bib`;

`bib2bib -c '\$type != "techreport"' -c 'category : "earth"' -ob earth.bib hahsler.bib`;

`bib2bib -c '\$type != "techreport"' -c 'category : "bioinformatics"' -ob bioinformatics.bib hahsler.bib`;

`bib2bib -c '\$type != "techreport"' -c 'category : "healthcare"' -ob healthcare.bib hahsler.bib`;

`bib2bib -c '\$type != "techreport"' -c 'category : "ml" | category : "ai"' -ob ml.bib hahsler.bib`;


open SINK, ">publications_by_field.md" || die "cant write!\n";

print SINK qq!
**Areas**:

* <a href="#associations">Association Rule Mining</a>
* <a href="#bioinformatics">Bioinformatics</a>
* <a href="#dlib">Digital Libraries</a>
* <a href="#stream">Data Stream Mining</a>
* <a href="#earth">Earth Science Data Research</a>
* <a href="#healthcare">Healthcare</a>
* <a href="#marketing">Marketing Research</a>
* <a href="#ml">Machine Learning</a>
* <a href="#optimization">Optimization</a>
* <a href="#recommender">Recommender Systems</a>
* <a href="#patterns">Software Engineering</a>
* <a href="#visualization">Visualization</a>
* <a href="#other">Other</a>

<div class="anchor" id="associations">
<h2>Association Rule Mining</h2>
!;

system("$BIBTEX2HTML -noabstract -nobibsource -dl -noheader -o associations_naked associations.bib");
`cat associations_naked.html | grep -v "<hr>" | grep -v "filliatr" > associations_naked.jhtml`;

system("$BIBTEX2HTML associations.bib");
`cat associations.html | grep -v "<hr>" | grep -v "filliatr" > associations_all.html`;
print SINK `cat associations.html | grep -v "<hr>" | grep -v "filliatr"`;

print SINK qq*
</table>
</div>
*;

print SINK qq*
<div class="anchor" id="bioinformatics">
<h2>Bioinformatics</h2>
*;

system("$BIBTEX2HTML -noabstract -nobibsource -dl -noheader -o stream_naked stream.bib");
`cat stream_naked.html | grep -v "<hr>" | grep -v "filliatr" > stream_naked.jhtml`;

#system("$BIBTEX2HTML -noabstract -nobibsource stream.bib");
system("$BIBTEX2HTML bioinformatics.bib");
`cat bioinformatics.html | grep -v "<hr>" | grep -v "filliatr" > bioinformatics_all.html`;
print SINK `cat bioinformatics.html | grep -v "<hr>" | grep -v "filliatr"`;
print SINK qq*
</table>
</div>
*;

print SINK qq*
<div class="anchor" id="earth">
<h2>Earth Science Data Research</h2>
*;
#system("$BIBTEX2HTML -noabstract -nobibsource stream.bib");
system("$BIBTEX2HTML earth.bib");
`cat earth.html | grep -v "<hr>" | grep -v "filliatr" > earth_all.html`;
print SINK `cat earth.html | grep -v "<hr>" | grep -v "filliatr"`;
print SINK qq*
</table>
</div>
*;


print SINK qq*
<div class="anchor" id="stream">
<h2>Data Stream Mining</h2>
*;

#system("$BIBTEX2HTML -noabstract -nobibsource stream.bib");
system("$BIBTEX2HTML stream.bib");
`cat stream.html | grep -v "<hr>" | grep -v "filliatr" > stream_all.html`;
print SINK `cat stream.html | grep -v "<hr>" | grep -v "filliatr"`;

print SINK qq*
</table>
</div>
*;


print SINK qq*
<div class="anchor" id="dlib">
<h2>Digital Libraries</h2>
*;
#system("$BIBTEX2HTML -noabstract -nobibsource dlib.bib");
system("$BIBTEX2HTML dlib.bib");
`cat dlib.html | grep -v "<hr>" | grep -v "filliatr" > dlib_all.html`;
print SINK `cat dlib.html | grep -v "<hr>" | grep -v "filliatr"`;

print SINK qq*
</table>
</div>
*;

print SINK qq*
<div class="anchor" id="healthcare">
<h2>Healthcare</h2>
*;

system("$BIBTEX2HTML -noabstract -nobibsource -dl -noheader -o stream_naked stream.bib");
`cat stream_naked.html | grep -v "<hr>" | grep -v "filliatr" > stream_naked.jhtml`;

#system("$BIBTEX2HTML -noabstract -nobibsource stream.bib");
system("$BIBTEX2HTML healthcare.bib");
`cat healthcare.html | grep -v "<hr>" | grep -v "filliatr" > healthcare_all.html`;
print SINK `cat healthcare.html | grep -v "<hr>" | grep -v "filliatr"`;
print SINK qq*
</table>
</div>
*;


print SINK qq*
<div class="anchor" id="marketing">
<h2>Marketing Research</h2>
*;
#system("$BIBTEX2HTML -noabstract -nobibsource dlib.bib");
system("$BIBTEX2HTML marketing.bib");
`cat marketing.html | grep -v "<hr>" | grep -v "filliatr" > marketing_all.html`;
print SINK `cat marketing.html | grep -v "<hr>" | grep -v "filliatr"`;

print SINK qq*
</table>
</div>

<div class="anchor" id="ml">
<h2>Machine Learning and AI</h2>
*;
#system("$BIBTEX2HTML -noabstract -nobibsource dlib.bib");
system("$BIBTEX2HTML ml.bib");
`cat ml.html | grep -v "<hr>" | grep -v "filliatr" > ml_all.html`;
print SINK `cat ml.html | grep -v "<hr>" | grep -v "filliatr"`;

print SINK qq*
</table>
</div>
*;

print SINK qq*
<div class="anchor" id="optimization">
<h2>Optimization</h2>
*;
#system("$BIBTEX2HTML -noabstract -nobibsource recommender.bib");
system("$BIBTEX2HTML optimization.bib");
`cat optimization.html | grep -v "<hr>" | grep -v "filliatr" > optimization_all.html`;
print SINK `cat optimization.html | grep -v "<hr>" | grep -v "filliatr"`;

print SINK qq*
</table>
</div>


<div class="anchor" id="recommender">
<h2>Recommender Systems</h2>
*;
#system("$BIBTEX2HTML -noabstract -nobibsource recommender.bib");
system("$BIBTEX2HTML recommender.bib");
`cat recommender.html | grep -v "<hr>" | grep -v "filliatr" > recommender_all.html`;
print SINK `cat recommender.html | grep -v "<hr>" | grep -v "filliatr"`;

print SINK qq*
</table>
</div>

<div class="anchor" id="patterns">
<h2>Software Engineering</h2>
*;

#system("$BIBTEX2HTML -noabstract -nobibsource patterns.bib");
system("$BIBTEX2HTML patterns.bib");
`cat patterns.html | grep -v "<hr>" | grep -v "filliatr" > patterns_all.html`;
print SINK `cat patterns.html | grep -v "<hr>" | grep -v "filliatr"`;

print SINK qq*
</table>
</div>



<div class="anchor" id="visualization">
<h2>Visualization</h2>
*;

system("$BIBTEX2HTML -noabstract -nobibsource -dl -noheader -o seriation_naked seriation.bib");
`cat seriation_naked.html | grep -v "<hr>" | grep -v "filliatr" > seriation_naked.jhtml`;


#system("$BIBTEX2HTML -noabstract -nobibsource seriation.bib");
system("$BIBTEX2HTML visualization.bib");
`cat visualization.html | grep -v "<hr>" | grep -v "filliatr" > visualization_all.html`;
print SINK `cat visualization.html | grep -v "<hr>" | grep -v "filliatr"`;

print SINK qq*
</table>
</div>


<div class="anchor" id="other">
<h2>Other</h2>
*;

#system("$BIBTEX2HTML -noabstract -nobibsource seriation.bib");
system("$BIBTEX2HTML other.bib");
`cat other.html | grep -v "<hr>" | grep -v "filliatr" > other_all.html`;
print SINK `cat other_all.html | grep -v "<hr>" | grep -v "filliatr"`;

print SINK qq*
</table>
</div>
*;

close SINK;


#`tidy -m publications_list.md`;

### this messes up the bullet points
#`tidy -m publications_by_field.md`;
