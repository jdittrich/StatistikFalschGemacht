.. index:: open data

.. _hiding-data:

.. ***************
.. Hiding the data
.. ***************

*******************
Daten verstecken
*******************

.. epigraph::

	»Given enough eyeballs, all bugs are shallow.« (Gibt es genug Augen, sind alle Fehler oberflächlich)

	-- Eric S. Raymond

Wir haben über ref:`häufige Fehler <mistakes>` von Wissenschaftlern gesprochen und das der beste Weg, diese Fehler zu finden, ein bisschen kritische Überprüfung ist. Peer Review gibt einen Teil dieser Überprüfung, aber ein Peer Reviewer hat nicht die Zeit, ausgiebig Daten neu zu analysieren und Auswertungscode auf Schreibfehler zu untersuchen – Reviewer können nur prüfen, ob die Methodik sinnvoll ist. Manchmal finden sie offensichtliche Fehler, aber subtilere Probleme werde üblicherweise übersehen. [Schroter:2008hw]_

.. We've talked about the :ref:`common mistakes <mistakes>` made by scientists, and how the best way to spot them is a bit of outside scrutiny. Peer review provides some of this scrutiny, but a peer reviewer doesn't have the time to extensively re-analyze data and read code for typos -- reviewers can only check that the methodology makes good sense. Sometimes they spot obvious errors, but subtle problems are usually missed.\ :cite:p:`Schroter:2008hw`


Viele Journals und Berufsverbände haben daher die Anforderung dass Forscher ihre Daten auf anfrage anderen Forschern zur Verfügung stellen. Komplette Datensätze sind normalerweise zu umfangreich, um in einem Journal abgedruckt zu werden. Deshalb berichten Autoren von ihren Analyseergebnissen und senden die kompletten Daten zu anderen Wissenschaftlern, wenn diese danach fragen. Vielleicht finden sie einen Fehler oder ein Muster das die ursprünglichen Forscher übersehen haben.

.. This is why many journals and professional societies require researchers to make their data available to other scientists on request. Full datasets are usually too large to print in the pages of a journal, so authors report their results and send the complete data to other scientists if they ask for a copy. Perhaps they will find an error or a pattern the original scientists missed.

Zumindest in der Theorie. 2005 entschieden sich Jelte Wicherts und ihre Kollegen an der Universität Amsterdam  jeden kürzlich erschienen Artikel in mehreren bekannten Journals der *American Psychological Association* (APA) zu analysieren, um mehr über die verwendeten statistischen Methoden zu erfahren. Sie wählten Veröffentlichungen der APA zum Teil deshalb, weil der Verband verlangt, dass seine Autoren zustimmen, die Daten mit anderen Psychologen zu teilen, die die gemachten Behauptungen verifizieren wollen.

.. Or so it goes in theory. In 2005, Jelte Wicherts and colleagues at the University of Amsterdam decided to analyze every recent article in several prominent journals of the American Psychological Association to learn about their statistical methods. They chose the APA partly because it requires authors to agree to share their data with other psychologists seeking to verify their claims.

Die Wissenschaftler hatten nach 6 Monaten Daten von 64 Studien – insgesammt hatten sie zu 249 die Daten erfragt. Drei Viertel der Autoren haben ihre Daten nie gesendet. [Wicherts:2006jg]_

.. Of the 249 studies they sought data for, they had only received data for 64 six months later. Almost three quarters of study authors never sent their data.\ :cite:p:`Wicherts:2006jg`

Natürlich sind Wissenschaftler viel beschäftigte Leute und vielleicht hatten die Wissenschaftler deshalb keine Zeit, ihre Datensätze zusammenzustellen, Dokumenten zu schreiben, die erklären, was die Variablen im einzelnen aussagen und wie diese gemessen wurden und so weiter.

.. Of course, scientists are busy people, and perhaps they simply didn't have the
time to compile their datasets, produce documents describing what each variable
means and how it was measured, and so on.

.. index:: p value; errors in calculation

Wichert und seine Kollegen entschieden sich das zu überprüfen. Sie gingen durch alle 249 Veröffentlichungen und prüften diese auf üblichen Fehler, die durch das Lesen der Untersuchungen erkannt werden konnten, wie z.B. inkonsistente statistische Ergebnisse, unsachgemäße Nutzung von statistischen tests und ganz normale Tippfehler. Mindestens die Hälfte der Veröffentlichungen hatte einen meist kleinen Fehler, aber in 15% der Veröffentlichungen wurde ein fälschlicherweie statistisch signifikantes Resultat vorgestellt, dass nur auf Grund eines Fehlers signifikant war.

.. Wicherts and his colleagues decided they'd test this. They trawled through all the studies looking for common errors which could be spotted by reading the paper, such as inconsistent statistical results, misuse of various statistical tests, and ordinary typos. At least half of the papers had an error, usually minor, but 15% reported at least one statistically significant result which was only significant because of an error.

Danach prüften sie die Korrelation zwischen diesen Fehlern und dem Unwillen, die Daten zu teilen. Es gab einen klaren Zusammenhang: Autoren, die ihre Daten nicht teilen wollten hatten mit größerer Wahrscheinlichkeit einen Fehler in ihrer Veröffentlíchung begangen und ihre statistischen Nachweise waren schwächer. [Wicherts:2011fp]_  Weil die meisten Autoren ihre Daten nicht teilten konnte Wicherts nicht nach weiteren statistischen Fehlern suchen, sodass noch mehr Fehlern lauern könnten.

.. Next, they looked for a correlation between these errors and an unwillingness to share data. There was a clear relationship. Authors who refused to share their data were more likely to have committed an error in their paper, and their statistical evidence tended to be weaker.\ :cite:p:`Wicherts:2011fp` Because most authors refused to share their data, Wicherts could not dig for deeper statistical errors, and many more may be lurking.

Das ist kein Beweis, dass die Autoren ihre Daten versteckten weil sie Angst hatten ihre Fehler würden entdeckt und auch nicht, dass die Autoren überhaupt von den Fehlern wussten. Korrelation bedeutet nicht Kausation. Aber es ist wie ein hinweisender Blick, und verstohlene Geste, während der stumm die Worten »Schau mal hier!« geformt werden. [#xkcd]_

.. This is certainly not proof that authors hid their data out of fear their errors may be uncovered, or even that the authors knew about the errors at all. Correlation doesn't imply causation, but it does waggle its eyebrows suggestively and gesture furtively while mouthing "look over there."  [#xkcd]_

.. _omit-details:

Lass einfach die Einzelheiten aus
---------------------------------

.. Just leave out the details
.. --------------------------

Pingelige Statistiker sorgen für schlechte Laune, indem sie Fehler in deiner Publikation aufzeigen? Die klare Lösung: Gib ihnen nicht so viele Einzelheiten über deine Analyse. Sie können keine Fehler finden, wenn du nicht sagtst, wie du deine Daten analysiert hast.

.. Nitpicking statisticians getting you down by pointing out flaws in your paper? There's one clear solution: don't publish as much detail! They can't find the errors if you don't say how you evaluated your data.

Ich behaupte nicht im Ernst, dass böse Wissenschaftler das mit Absicht machen, obwohl das manche vielleicht tun. Viel öfter werden Einzelheiten ausgelassen, weil die Autoren vergessen, sie zu erwähnen oder weil die Platzbeschränkungen in dem Journal die Streichungen erzwingen.

.. I don't mean to seriously suggest that evil scientists do this intentionally, although perhaps some do. More frequently, details are left out because authors simply forgot to include them, or because journal space limits force their omission.

Es ist möglich, zu prüfen, was in den Studien ausgelassne wurde. Wissenschaftler, die medizinische Versuche durchführen, müssten vor dem Versuchsbeginn einen detailierten Studienplan an eine Ethik-Kommision übergeben. Die Pläne führen aus, welche Werte die Studie messen wird. Beispielsweise könnte eine Studie verschiede Symptome messen um zu prüfen, ob diese von der Behandlung beeinflusst werden.  Eine Forschergruppe hat eine Sammlung dieser Pläne von einer Komission erhalten. Sie fanden auch die publizierten Studien und prüften dann, wie darin über die Messungen berichtet wurde.

.. It's possible to evaluate studies to see what they left out. Scientists leading medical trials are required to provide detailed study plans to ethical review boards before starting a trial, so one group of researchers obtained a collection of these plans from a review board. The plans specify which outcomes the study will measure: for instance, a study might monitor various symptoms to see if any are influenced by the treatment. The researchers then found the published results of these studies and looked for how well these outcomes were reported.

Ungefähr die Hälfte der gemessenen Resultate waren nicht in wissenschaftlichen Publikationen erwähnt. Viele der ausgelassenen Ergebnissen waren statistisch nicht signifikant und wurden still unter den Teppich gekehrt. [#rug]_ Ein anderer großer Teil der Resulate wurde nicht genau genug beschreiben, sodass die Nutzung der Daten in einer Metaanalyse durch andere Wissenschaflter nicht möglich sein würde.

.. Roughly half of the outcomes never appeared in the scientific journal papers at all. Many of these were statistically insignificant results which were swept under the rug. [#rug]_ Another large chunk of results were not reported in sufficient detail for scientists to use the results for further meta-analysis.\ :cite:p:`Chan:2004gm`

.. index:: stopping rules; omitted

Andere Berichte fanden ähnliche Probleme. Ein Bericht über medizinische Versuche fand herraus, dass die meisten Studien wichtige methodische Details ausließen, die :ref:`halteregeln ("stopping rules") <stopping-rules>`, also wann die Datensammlung gestoppt wird, und :ref:`Teststärke <power>`, wobei Studien in kleinen Journals für Spezialisten schlechter waren als solche in großen, allgemeinen Medizinischen Publikationen [HuwilerMuntener:2002ij]_

.. NOTE: hier wohl eher "methodische" statt methodologische

.. Other reviews have found similar problems. A review of medical trials found that most studies omit important methodological details, such as :ref:`stopping rules <stopping-rules>` and :ref:`power calculations <power>`, with studies in small specialist journals faring worse than those in large general medicine journals.\ :cite:p:`HuwilerMuntener:2002ij`


.. TODO: though not all of it. = nicht alle details oder nicht alle journals oder nicht alle Studien?. Beim lesen des Papers: Es scheint einen Effekt zugunsten von Consort zu geben, aber manche Publikationen werden auch schlechter (wobei: Korrelation nicht Kausation!)

Medizischen Journals haben angefangen das Problem zu bekämpfen, indem Richtlinien für das Berichten der Ergebnissen aufgestellt wurden, wie z.B. die `CONSORT Checkliste <http://www.consort-statement.org/>`_. Autoren müssen die Anforderungen der Checkliste erfüllen, bevor die ihre Studie einreichen und die Lektoren prüfen, ob alle wichtigen Details eingeschlossen wurden. Die Checkliste scheint zu funktionieren; Studien in Journals, welche den Richtlinien folgen, berichten eher über wichtige Details [Plint:2006uj]_

Leider werden die Richtlinien unkonsistent angewandt und Studien mit fehlenden Details werden trotzdem veröffentlicht. [Mills:2005ei]_ Journal-Lektoren werden sich mehr bemühen müssen um die Standards durchzusetzen.

.. Medical journals have begun to combat this problem with standards for reporting of results, such as the `CONSORT checklist <http://www.consort-statement.org/>`_. Authors are required to follow the checklist's requirements before submitting their studies, and editors check to make sure all relevant details are included. The checklist seems to work; studies published in journals which follow the guidelines tend to report more essential detail, although not all of it.\ :cite:p:`Plint:2006uj` Unfortunately the standards are inconsistently applied and studies often slip through with missing details nonetheless.\ :cite:p:`Mills:2005ei` Journal editors will need to make a greater effort to enforce reporting standards.

Wir sehen, dass es publizierten Berichten in unserer Analysie nicht besonders gut ergeht. Wie steht es um *unveröffetlichte* Berichte?


.. We see that published papers aren't faring very well. What about *unpublished* studies?

Wissenschaft im Aktenschrank
----------------------------»

.. Science in a filing cabinet
.. ---------------------------
In vorhergehenden Kapiteln haben wir den Einfluss von Mehrfachvergleichen und Wahrheitsinflation auf Studienergebnisse gesprochen. Die Probleme entstehen, wenn in den Studien mehrere Vergleichen mit niedriger Teststärke gemacht werden. Das führt zu einer großen Menge an fälschlicherweise positiven Ergebnissen und aufgeblasenen Schätzungen der Effektgrößen. Diese Probleme gibt es überall in wissenschaftlichen Veröffentlichungen. 


Zuvor haben wir den Einfluss von :ref:`Mehrfachvergleichen <multiple-comparisons>` und :ref:`truth inflation <truth-inflation>` betrachtet. Diese Probleme entstehen, wenn Studien viele Vergleiche bei geringer Teststärke machen. Das führt zu vielen falsch-positiven Ergebnissen und übertriebenen Schätzungen der Effektgröße. Diese Probleme erscheinen überall in Veröffentlichungen. 

.. Earlier we saw the impact of :ref:`multiple comparisons <multiple-comparisons>` and :ref:`truth inflation <truth-inflation>` on study results. These problems arise when studies make numerous comparisons with low statistical power, giving a high rate of false positives and inflated estimates of effect sizes, and they appear everywhere in published research.

Aber nicht jede Studie wird veröffenticht. Wir bekommen nur einen kleinen Teil der medizinischen Forschung zu sehen, zum Beispiel weil wenige Wissenschafler sich darum kümmern »Wir haben dieses Medikament probiert und es schien nicht zu funktionieren« zu veröffentlichen. 

.. But not every study is published. We only ever see a fraction of medical research, for instance, because few scientists bother publishing "We tried this medicine and it didn't seem to work."

Hier ein Beispiel: Studien des Tumorsuppressor-Proteins TP53 und seine Wirkung auf Kopf- und Nackenkrebs. Eine Anzahl von Studien legt nahe, dass die Messung von TP53 genutzt werden können um die Mortalitätsraten der Kreberkrankung vorherzusagen, da das Protein dazu dient Zellwachstum und Entwicklung reguliert. Deshalb muss es korrekt funktionieren, damit Kebs verhindert wird. Nachdem alle 18 veröffentlichte Studien über TP53 und Krebs zusammen analysiert wurden, war das Ergebnis eine hohe, statistisch signifikante correlation: TP53 kann offensichtlich gemessen werden um herrauszufinden wie wahrscheinlich es ist, dass ein Tumor jemanden umbringt. 

.. Consider an example: studies of the tumor suppressor protein TP53 and its effect on head and neck cancer. A number of studies suggested that measurements of TP53 could be used to predict cancer mortality rates, since it serves to regulate cell growth and development and hence must function correctly to prevent cancer. When all 18 published studies on TP53 and cancer were analyzed together, the result was a highly statistically significant correlation: TP53 could clearly be measured to tell how likely a tumor is to kill you.

Aber nimm an, wir graben einige *unveröffentlichte* Ergebnisse zu TP53 aus: Daten die in anderen Studien erähnt wurden, aber nicht veröffentlicht oder anaysiert. Nimm auch diese Daten und der statistisch signifikante Effekt verschwindet. \ \ :cite:p:`Kyzas:2005ep` Schließlich kümmern sich nur wenige Autoren darum, Daten zu veröffentlichen, die keine signifikanten Korrelationen zeigen. So hatte die Meta-Analyse eine verzerrte Datenbasis. 

.. But then suppose we dig up *unpublished* results on TP53: data that had been mentioned in other studies but not published or analyzed. Add this data to the mix and the statistically significant effect vanishes.\ :cite:p:`Kyzas:2005ep` After all, few authors bothered to publish data showing no correlation, so the meta-analysis could only use a biased sample.

Eine ähnliche Studie schaute sich  reboxetine an, ein Antidepressivum, welches von Pfitzer verkauft wird. Mehrere veröffentlichte Studien legen nahe das reboxetine effektiver ist als ein Placebo. Das hat dazu geführt, dass mehrere Europäische Staten es als verschreibbares Medikament für depressive Patienten anerkannt haben. Das Deutsche Institut für Qualität und Effizienz im Gesundheistswesen ist verantwortlich für die medizinischer Behandlungen zu bewerten. Das Institut konnte unveröffentlichte Versuchsdaten von Pfizer bekommen -- dreimal mehr Daten as jemals dazu veröffentlicht wurden -- und hat diese Daten analysiert. Das Ergebnis: Reboxetine ist nicht effektiv. Pfizer hat die Öffentlichkeit nur von der Effektivität überzeugen können, weil sie die Studien vernachlässigten, die zeigten, dass das Medikamtne nicht effektiv ist. \ :cite:p:`Eyding:2010bx`

.. A similar study looked at reboxetine, an antidepressant sold by Pfizer. Several published studies have suggested that it is effective compared to placebo, leading several European countries to approve it for prescription to depressed patients. The German Institute for Quality and Efficiency in Health Care, responsible for assessing medical treatments, managed to get unpublished trial data from Pfizer -- three times more data than had ever been published -- and carefully analyzed it. The result: reboxetine is not effective. Pfizer had only convinced the public that it's effective by neglecting to mention the studies proving it isn't.\ :cite:p:`Eyding:2010bx`

Das Problem ist bekannt als »Publication-Bias« (Veröffentlichungs-Verzerrung) oder das Schubladen-Problem: Viele Studien bleiben für Jahre in der Schublade und werden nie veröffentlicht obwohl wertvollte Daten beigetragen werden könnten. 

.. This problem is commonly known as publication bias or the file-drawer problem: many studies sit in a file drawer for years, never published, despite the valuable data they could contribute.

Das Problem ist nicht einfach die Verzerrung der Veröffentli	chten Ergebnisse. Unveröffentlichte Studien führen zu einer vervielfachung des Aufwandes -- wenn andere Wissenschaftler nciht wissen, dass du eine Studie durchgeführt hast, machen die anderen Wissenschaftler diese Studien nochmal und verschwenden dabei Geld und Mühen. 

.. The problem isn't simply the bias on published results. Unpublished studies lead to a duplication of effort -- if other scientists don't know you've done a study, they may well do it again, wasting money and effort.effort.

Regulatoren und wissenschaftliche Journals haben versucht das Problem zu verhindert. Die Nahrungs- und Medikamenten-Verwaltung verlangt, dass bestimmte Arten von klinischen Versuchen innerhalb eines Jahres nach dem Studienende registriert werden. vergleichbarerweise hat dass Internationale Kommitee der Autoren medizinischer Journals 2005 angekündigt, dass nur noch Studien veröffentlicht werden die vorher registriert wurden.

.. was sind genau 

.. Regulators and scientific journals have attempted to halt this problem. The Food and Drug Administration requires certain kinds of clinical trials to be registered through their website ClinicalTrials.gov before the trials begin, and requires the publication of results within a year of the end of the trial. Similarly, the International Committee of Medical Journal Editors announced in 2005 that they would not publish studies which had not been pre-registered.

Leider hat ein Review von 738 registrierten klinischen Studien ergeben, dass nur 22% die rechtlichen Anforderungen für eine veröffentlichung erfüllen konnten. Das FDA hat keine Strafen gegenüber Gesundheitskonzernen erhoben und Journals haben nicht immer diie Anforderung der versuchsregistrierung durchgesetzt. Die meisten Studien verschwinden einfach. 

.. Unfortunately, a review of 738 registered clinical trials found that only 22% met the legal requirement to publish.\ :cite:p:`Prayle:2011cs` The FDA has not fined any drug companies for noncompliance, and journals have not consistently enforced the requirement to register trials. Most studies simply vanish.

.. [#xkcd]
   Witz schamlos gestohlen aus dem Alternativtext von http://xkcd.com/552/.

.. Joke shamelessly stolen from the alternate text of http://xkcd.com/552/.

.. [#rug]
   Warum sagen wir immer »unter den Teppich kehren«? Wessen Teppich ist das? Und warum benutzen wir keinen Staubsauger stat des Kehrbesens?

.. Why do we always say "swept under the rug"? Whose rug is it? And why don't
   they use a vacuum cleaner instead of a broom?

.. [Schroter:2008hw] Schroter, Sara, et al. "What errors do peer reviewers detect, and does training improve their ability to detect them?." Journal of the Royal Society of Medicine 101.10 (2008): 507-514.

.. [Wicherts:2006jg] Wicherts, Jelte M., et al. "The poor availability of psychological research data for reanalysis." American Psychologist 61.7 (2006): 726.

.. [Wicherts:2011fp] Wicherts, Jelte M., Marjan Bakker, and Dylan Molenaar. "Willingness to share research data is related to the strength of the evidence and the quality of reporting of statistical results." PloS one 6.11 (2011): e26828.

.. [HuwilerMuntener:2002ij] Huwiler-Müntener, Karin, et al. "Quality of reporting of randomized trials as a measure of methodologic quality." Jama 287.21 (2002): 2801-2804.

.. [Plint:2006uj] Plint, Amy C., et al. "Does the CONSORT checklist improve the quality of reports of randomised controlled trials? A systematic review." Medical Journal of Australia 185.5 (2006): 263.

.. [Mills:2005ei] Mills, Edward, et al. "An analysis of general medical and specialist journals that endorse CONSORT found that reporting was not enforced consistently." Journal of clinical epidemiology 58.7 (2005): 662-667.
