.. index:: vibration of effects, researcher freedom

.. _freedom:

.. ************************************
.. Researcher freedom: good vibrations?
.. ************************************

**************************
Freiheiten der Forschenden
**************************

Das Statistik langweilig und monoton sei, ist ein verbreitetes Missverständniss. Sammele viele Messungen, schmeiß die Zahlen in Excel, SPSS oder R und schlag auf die Software ein, bis bunte Diagramme rausfallen. Fertig! Alles was ein Statisiker tun muss, ist die Ergebnisse einzusammeln.

.. There's a common misconception that statistics is boring and monotonous. Collect lots of data, plug the numbers  into Excel or SPSS or R, and beat the software with a stick until it produces some colorful charts and graphs. Done! All the statistician must do is read off the results.

Aber man muss entscheinden *welche* Methode man anwendet. Zwei Forschende, die unabhängig von einander die selbe Frage beantworten wollen, könnten ganz unterschiedliche Statistische Methoden anwenden. Solche Entscheidungen müssen getroffen werden:

1. Die Einflüsse welcher Variablen sollen kontrolliert, also herrausgerechnet werden? In einem medizinischen Test, könnten das Alter der Patienten, BMI, vorhergehende Erkrankungen, Rauchen, Medikamente oder andere medizinische Tests sein. Welche dieser Faktoren haben Einfluss, welche können ignoriert werden?

.. But one must choose *which* commands to use. Two researchers attempting to answer the same question may perform different statistical analyses entirely. There are many decisions to make:

.. 1. Which variables do I adjust for? In a medical trial, for instance,    you might control for patient age, gender, weight, BMI, previous    medical history, smoking, drug use, or for the results of medical     tests done before the start of the study. Which of these factors are    important, and which can be ignored?

2. Welche Fälle soll ich ausschließen? Wenn ich eine Diät teste, möchte ich vielleicht Testteilnehmer ausschließen die in dem Zeitraum eine unkontrollierbaren Durchfall bekamen, denn die resultierende Daten werden nicht typisch sein – die Person mit Durchfall wird ganz erheblich abnehmen, egal welche Diät sie macht.

.. 2. Which cases do I exclude? If I'm testing diet plans, maybe I want to    exclude test subjects who came down with uncontrollable diarrhea    during the trial, since their results will be abnormal.

3. Was mache ich mich Ausreißern? Es wird immer einige Daten geben, die außerhalb des gewöhnlichen liegen, aus bekannten oder unbekannten Gründen. Vielleicht möchte ich diese Ausreißer aus der Analyse ausschließen oder seperat analysieren. Welche Fälle zählen als Ausreißer und was will ich mit diesen Daten machen?

.. 3. What do I do with outliers? There will always be some results which    are out of the ordinary, for reasons known or unknown, and I may want    to exclude them or analyze them specially. Which cases count as    outliers, and what do I do with them?

4. Wie definieren ich Gruppen. Beispielsweise könnte ich Patienten in »Übergewichtig«, »Normal« und »Untergewichtig« einteilen. Aber: Wo ziehe ich die Grenzen zwischen den Gruppen? Und was passiert, wenn ein Muskulöser Bodybuilder mit seinem BMI im »Übergewichtig« Bereich ist?

.. 4. How do I define groups? For example, I may want to split patients    into "overweight", "normal", and "underweight" groups. Where do I    draw the lines? What do I do with a muscular bodybuilder whose BMI is    in the "overweight" range?

5. Wie gehe ich mit fehlenden Daten um? Vielleicht teste ich die Rückbildung von Krebs unter Einfluss eines neuen Medikamentens. Mein Versuch läuft fünf Jahre lang – aber bei einigen Patienten werden Tumore erst nach sechs oder gar acht Jahren wiederkehren. Das ist nicht in meinen Daten. Wie kann ich es berücksichtigen, wenn ich die Wirkung des Medikamentes messe?

.. TODO: Ist das nicht a) ein sehr generelles Problem und b) vor allem dann relevant wenn sich die Daten nach meiner Beobachtungsperiode ganz anders verhalten als zuvor?

.. 5. What about missing data? Perhaps I'm testing cancer remission rates    with a new drug. I run the trial for five years, but some patients    will have tumors reappear after six years, or eight years. My data    does not include their recurrence. How do I account for this when    measuring the effectiveness of the drug?

6. Wieviele Daten soll ich sammeln? Soll ich aufhören wenn ich ein definitives Ergebnis habe oder weitermachen wie geplant?

.. 6. How much data should I collect? Should I stop when I have a   definitive result, or continue as planned until I've collected all    the data?

7. Wie messe ich die Resulate? Ein Medikament kann auf verschidene Weisen bewertet werden: Subjektives Wohlbefinden der Patienten, medizinische Tests, Auftreten eines bestimmten Symptoms oder die Dauer der Krankheit.

.. 7. How do I measure my outcomes? A medication could be evaluated with    subjective patient surveys, medical test results, prevalence of a    certain symptom, or measures such as duration of illness.

Ergebnisse zu erstellen kann stundenlange Erkundung und Analyse erfordern um festzustellen, welche Prozeduren am geeignetsten sind. Wissenschaftliche Veröffentlichungen erklären üblicherweise die statistische Analysemethode, die angewendet wurden aber sie erklären nciht immer, warum die Forscher diese Methode einer anderen Methode vorgezogen haben oder zeigen wie die Ergebnisse wären, wenn eine anderer Methoden genutzt worden wäre. Forscher sind frei zu entscheiden welche Methoden sie als richtig empfinden. Sie mögen die richtigen Entscheidungen treffen – aber was würde passieren, wenn die Forscher die Daten anders analysiert hätten?

.. Producing results can take hours of exploration and analysis to see which procedures are most appropriate. Papers usually explain the statistical analysis performed, but don't always explain why the researchers chose one method over another, or explain what the results would be had the researchers chosen a different method. Researchers are free to choose whatever methods they feel appropriate -- and while they may make the right choices, what would happen if they analyzed the data differently?

In Simulationen ist es möglich, doppelt so große Effektgrößen zu bekommen, in dem einfach Effekte verschiedener Variablen kontrolliert wurden, verschiedene Gruppen von Fälle ausgeschlossen wurden und Ausreißerwerte verschieden gehandhabt wurden. [Ioannidis:2008dy]_.

.. TODO: Paper lesen, um das Ergebnis klarer formulieren zu können.

.. In simulations, it's possible to get effect sizes different by a factor of two simply by adjusting for different variables, excluding different sets of cases, and handling outliers differently.\ :cite:p:`Ioannidis:2008dy` The effect size is that all-important number which tells you how much of a difference your medication makes. So apparently, being free to analyze how you want gives you enormous control over your results!

Die besorgniseregendste Folge dieser Freiheiten der Analyse ist, dass Forscher die statistische Analyse wählen könnten, die ihnen am meisten nützt und so willkürlich statistisch signifikante Ergebnisse produzieren, indem sie mit den Daten herrumspielen, bis sich etwas passendes entwicklet. Simulationen legen nahe, dass für einen bestimmten Datensatz der Anteil von fälschlicherweise postivien Ergebnissen auf über 50% ansteigen kann – nur indem Forscher verschiedene statistische Methoden ausprobieren können bis eine das gewünschte Ergebnis ergibt [Simmons:2011iw]_.

.. The most concerning consequence of this statistical freedom is that researchers may choose the statistical analysis most favorable to them, arbitrarily producing statistically significant results by playing with the data until something emerges. Simulation suggests that false positive rates can jump to over 50% for a given dataset just by letting researchers try different statistical analyses until one works.\ :cite:p:`Simmons:2011iw`

Forscher in der Medizin haben Wege entwickelt um positive Ergebnisse durch Ausprobieren von Methoden zu verhindern. Forscher müssen oftmals ein :index:`Versuchsprotokoll` formulieren, in dem  erklärt wird wie die Daten gesammelt und analysiert werden. Weil das Protokoll erstellt wird, bevor die Forscher irgendwelche Daten erheben, können sie die Analyse nicht so gestalten, das sie die Ergebnisse bekommen, die sie wünschen. Leider weichen viele Studien von dem Protokoll ab, so dass sich Verfälschung durch die Forscher einschleichen kann [Chan:2008bb]_. [Chan:2004gm]_. . Viele andere wissenscahftlicher felder haben nichtmals die Anforderung, ein Protokoll vor der Datenerhebung einzureichen.

.. Medical researchers have devised ways of preventing this. Researchers are often required to draft a :index:`clinical trial protocol`, explaining how the data will be collected and analyzed. Since the protocol is drafted before the researchers see any data, they can't possibly craft their analysis to be most favorable to them. Unfortunately, many studies depart from their protocols and perform different analysis, allowing for researcher bias to creep in.\ :cite:p:`Chan:2008bb,Chan:2004gm` Many other scientific fields have no protocol publication requirement at all.

Die starke Vermehrung statistischer Methoden hat uns viele nützliche Werkzeuge gegeben. Aber sie werden meist als Keule genutzt: Man muss einfach auf die Daten einschlagen, bis sie das gewünsche Ergebnis gestehen.

.. The proliferation of statistical techniques has given us many useful tools, but it seems they have been put to use as blunt objects. One must simply beat the data until it confesses.

.. [Ioannidis:2008dy] Ioannidis, John PA. "Why most discovered true associations are inflated." Epidemiology 19.5 (2008): 640-648.
.. [Simmons:2011iw] Simmons, Joseph P., Leif D. Nelson, and Uri Simonsohn. "False-positive psychology undisclosed flexibility in data collection and analysis allows presenting anything as significant." Psychological science (2011): 0956797611417632.
.. [Chan:2008bb] Chan, An-Wen, et al. "Discrepancies in sample size calculations and data analyses reported in randomised trials: comparison of publications with protocols." Bmj 337 (2008): a2299.
.. [Chan:2004gm] Chan, An-Wen, et al. "Empirical evidence for selective reporting of outcomes in randomized trials: comparison of protocols to published articles." Jama 291.20 (2004): 2457-2465.
