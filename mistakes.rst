.. _mistakes:

.. ************************
.. Everybody makes mistakes
.. ************************

*****************************
Jeder macht Fehler
****************************

Bis jetzt habe ich vorausgesetzt, dass Wissenschaftler fähig sind, statistische Berechnungen mit perfekter Genauigkeit durchzüführen; sie machen nur Fehler in ihrer Wahl der zu berechnenden Zahlen. Wissenschaftler können die Resultate von statistischer Tests misbrauchen oder daran scheitern relevante Berechnungen durchzuführen, aber zumindest können sie einen p-Wert berechenen, oder?

Vielleicht nicht.

.. TODO "only err in their choice of appropriate numbers to compute." Was heißt das?

.. Until now, I have presumed that scientists are capable of making statistical computations with perfect accuracy, and only err in their choice of appropriate numbers to compute. Scientists may misuse the results of statistical tests or fail to make relevant computations, but they can at least calculate a *p* value, right?

.. Perhaps not.

.. index:: p value; errors in calculation

Untersuchungen statistisch signifikanter Ergebnisse medizinischer und psychologischer Versuche deuten darauf hin, dass viele *p*-Werte falsch sind und dass einige nicht-signifikante Ergebnissen in Wirklichkeit signifikant sind, wenn sie richtig berechnet werden. [Baggerly:2009gk]_ [Gotzsche:1989uy]_

.. Surveys of statistically significant results reported in medical and psychological trials suggest that many *p* values are wrong, and some statistically insignificant results are actually significant when computed correctly.\ :cite:p:`Gotzsche:2006du,Bakker:2011ja` Other reviews find examples of misclassified data, erroneous duplication of data, inclusion of the wrong dataset entirely, and other mixups, all concealed by papers which did not describe their analysis in enough detail for the errors to be easily noticed.\ :cite:p:`Baggerly:2009gk,Gotzsche:1989uy`

Sonnenlicht hilft bei der Desinfektion und viele Wissenschaftler haben gefordert, dass in experimenten erhobene Daten im Internet veröffentlich werden. In machen Feldern ist das heute üblich: Es gibt Datenbanken für  Gensequenzen, Protinstrukturen, Astronomische Beobachtungen und Erdbeobachtungen. Sie sammeln Beiträge tausender Wissenschaftler. Viele andere Felder können ihre Daten aber nicht teilen – weil es nicht praktikabel wäre (in der Partikelphysik kann es um viele Terabyte daten gehen), weil die Privatssphäre der teilnehmer gefährdet wäre (Medizinische Versuche), weil kein Geld oder keine Technologie zur verfügung steht oder um Eigentum und Kontrolle über die Daten zu behalten und die Entdeckungen die darauf basieren. Und sogar wenn alle Daten verfügbar wären, würde sie jemand analysieren um alle Fehler zu finden?

.. TODO Sunlight/Desinfectant metaphor hard to understand: Es geht nicht um "echtes" Sonnenlicht; es ist eher die "fackel der wahrheit" die die falsche Ergebnisse wegdesinfiziert.

.. Sunshine is the best disinfectant, and many scientists have called for experimental data to be made available through the Internet. In some fields, this is now commonplace: there exist gene sequencing databases, protein structure databanks, astronomical observation databases, and earth observation collections containing the contributions of thousands of scientists. Many other fields, however, can't share their data due to impracticality (particle physics data can include many terabytes of information), privacy issues (in medical trials), a lack of funding or technological support, or just a desire to keep proprietary control of the data and all the discoveries which result from it. And even if the data were all available, would anyone analyze it all to spoterrors?

.. index:: reproducible research

In Vergleichbarer Weise haben Wissenschaftler in manchen Feldern darauf hingewirkt, ihre Analysen durch die Nutzung schlauer technologischer Werkzeuge verfügbar zu machen. Ein Werkzeug names Sweave, Beispielsweise, macht es einfach, statistische Analysen, die in der populären Programmiersprace R durchgeführt wurden, in Veröffentlichungen einzubetten, die in LaTex geschrieben wurden, einem Standard-Textsatzsystem für wissenschaftliche und mathematishe Veröffentlichungen. Das Ergebnis sieht aus wie jedes andere Forschungspapier aber ein anderer Wissenschaftler der die veröffentlichung liest und in Bezug auf die Methoden neugierig ist, kann den Quellcode herrunterladen und so nachlesen wie die Ergebnisse berechnet wurden. Aber würden Wissenschaftler von der Möglichkeit Gebrauch machen? Niemand erntet wissenschaftlichen Ruhm durch das Überprüfen von Schreibfehlern.

.. Similarly, scientists in some fields have pushed towards making their statistical analyses available through clever technological tools. A tool called Sweave, for instance, makes it easy to embed statistical analyses performed using the popular R programming language inside papers written in LaTeX, the standard for scientific and mathematical publications. The result looks just like any scientific paper, but another scientist reading the paper and curious about its methods can download the source code, which shows exactly how all the numbers were calculated. But would scientists avail themselves of the opportunity?  Nobody gets scientific glory by checking code for typos.

Eine andere Lösung wäre :index:`Replikation`. Wenn Wissenschaftler sorgfältig die Experimente anderer Wissenschaftler nachstellen und die Resultate überprüfen ist es viel einfacher, die Möglichkeit auszuschließen das ein Tippfehler in einer Analysefunktion ein falsches Ergebnis erzeugt. replikation siebt auch zufällige fälschlicherweise positive Ergebnisse aus. Viele Wissenschaftler sagen, dass die Replikation von Experimenten das Herz der Wissenschaft sind: Keine neue Idee ist akzeptiert, bis diese unabhängig überall getestet und wieder getestet wurde und als wasserdicht befunden wurde.

.. TODO: validate habe ich mal Ergebnissneutral mit "überprüfen" übesetzt. My inner Karl Popper demands it.

.. Another solution might be :index:`replication`. If scientists carefully recreate the experiments of other scientists and validate their results, it is much easier to rule out the possibility of a typo causing an errant result. Replication also weeds out fluke false positives. Many scientists claim that experimental replication is the heart of science: no new idea is accepted until it has been independently tested and retested around the world and found to hold water.


Wobei das nicht ganz der Realität entspricht. Wissneschaftler nehmen resultate vorhergehender Studien oft als gegeben hin obwohl sich manchmal auch Wissenschaftler dazu entscheiden, frühere Publikationen systematisch neu zu überprüfen. Das *Reproducibility Project* [#reproducibility]_ z.B. zielt darauf ab, Veröffentlichungen aus wichtigen Psychologie-Journals zu überprüfen um festzustellen welche Ergebnisse ihre Gültigkeit behalten und welche Eigenschaften einer Veröffentlichungen vorhersagen wie wahrscheinlich es ist, dass diese einer neuen Überprüfung standhält. In einem anderen Fall haben Krebsforscher von Amgen 63 wichtige vorklinische Studien aus der Krebsforschung  getestet (»Vorklinisch« heißt, dasnn die Studien keinen menschlichen Patienten undtersuchten, da neue und nicht bewiesene Ideen getestet wurden) Trotz Zusammenarbeit mit den ursprüglichen Autoren der überprüften Veröffentlichungen konnten die Amgen-Forscher und sechs der 53 Studienergebnisse reproduzieren. Forscher von Bayer haben über ähnliche Schwierigkeiten berichtet. Sie testeten  möglichen neue Wirkstoffe, die in Publikationen beschreiben werden. [Prinz:2011gb]_

.. That's not entirely true; scientists often take previous studies for granted,though occasionally scientists decide to systematically re-test earlier works. One new project, for example, aims to reproduce papers in major psychology journals to determine just how many papers hold up over time -- and what attributes of a paper predict how likely it is to stand up to retesting. [#reproducibility]_ In another example, cancer researchers at Amgen retested 53 landmark preclinical studies in cancer research. (By "preclinical" I mean the studies did not involve human patients, as they were testing new and unproven ideas.) Despite working in collaboration with the authors of the original papers, the Amgen researchers could only reproduce six of the studies.[Begley:2012]_ Bayer researchers have reported similar difficulties when testing potential new drugs found in published papers.\ :cite:p:`Prinz:2011gb`

Das ist besorgniserregend. Gibt es diese Tendenz auch für weniger spekulative Arten der medizinischen Forschung? Anscheinend: Unter den meistzitierten Forschungsartikeln in der Medizin sind ein Viertel nach ihrer Publikation nicht getestet wurden und ein Drittel der Ergebnisse stellte sich bei später Foschung als übertrieben oder falsch herraus. [Ioannidis:2005gy]_ Das ist nicht so extrem wie das Ergebnis der Amgen-Forscher aber es sorgt dafür, dass du dich wunderst welche gewichtigen Fehler immernoch unbemerkt in wichtiger Forschung lauern. Replikation ist nicht so verbreitet, wie wir es gerne hätten und die Resultate der Replikation sind nicht immer günstig für die untersuchte Publikation. 

.. This is worrisome. Does the trend hold true for less speculative kinds of
medical research? Apparently so: of the top-cited research articles in medicine,
a quarter have gone untested after their publication, and a third have been
found to be exaggerated or wrong by later research.\ :cite:p:`Ioannidis:2005gy`
That's not as extreme as the Amgen result, but it makes you wonder what
important errors still lurk unnoticed in important research. Replication is not
as prevalent as we would like it to be, and the results are not always
favorable.

.. [#reproducibility]
   »The Reproducibility Project«», auf
   http://openscienceframework.org/reproducibility/

.. [Baggerly:2009gk]  Baggerly, Keith A., and Kevin R. Coombes. "Deriving chemosensitivity from cell lines: Forensic bioinformatics and reproducible research in high-throughput biology." The Annals of Applied Statistics (2009): 1309-1334.

.. [Gotzsche:1989uy] Gøtzsche, Peter C. "Methodology and overt and hidden bias in reports of 196 double-blind trials of nonsteroidal antiinflammatory drugs in rheumatoid arthritis." Controlled clinical trials 10.1 (1989): 31-56.

.. [Begley:2012] Begley, C. Glenn, and Lee M. Ellis. "Drug development: Raise standards for preclinical cancer research." Nature 483.7391 (2012): 531-533.

.. [Prinz:2011gb] Prinz, Florian, Thomas Schlange, and Khusru Asadullah. "Believe it or not: how much can we rely on published data on potential drug targets?." Nature reviews Drug discovery 10.9 (2011): 712-712.

..[Ioannidis:2005gy] Ioannidis, John PA. "Contradicted and initially stronger effects in highly cited clinical research." Jama 294.2 (2005): 218-228.
