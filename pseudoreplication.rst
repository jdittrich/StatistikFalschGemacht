.. index:: pseudoreplication

.. ******************************************
.. Pseudoreplication: choose your data wisely
.. ******************************************

******************************************
Pseudoreplikation: Wähle deine Daten weise
******************************************

Viele Studien streben an mehr Daten durch Replikation zu sammeln. Indem sie ihre Messungen mit zusätzlichen Patienten oder Stichproben wiederholen, können sie sich sicherer sein, dass ihre Zahlen stimmen und das kleine Unterschiede entdeckt werden, die auf den ersten Blick nicht sichtbar sind. Wir haben gesehen, wie wertvoll mehr Daten für das Erhöhen der Teststärke und das Entdecken kleiner Unterschiede ist. Aber was genau zählt als  »Replikation«?

.. Many studies strive to collect more data through replication: by repeating their
measurements with additional patients or samples, they can be more certain of
their numbers and discover subtle relationships that aren't obvious at first
glance. We've seen the value of additional data for improving statistical power
and detecting small differences. But what exactly counts as a replication?
.. TODO: mi "mehr Daten durch Replikation zu sammeln" mit/durch/für?
.. TODO: Was genau zählt... : nicht verbunden mit vorhergehendem Satz (?)

Nehmen wir wieder ein medizinisches Beispiel. Ich habe zwei Gruppe je 100 Patienten die verschiedene Medikamente Einnehmen und ich möchte herrausfinden welches der Medikamente am besten gegen Bluthochdruck wirkt. Jede Gruoppen hat das jeweilige Medikament einen Monat lang eingenommen, damit es wirken kann. Dann wurde bei jeder Person jeder Gruppe über zehn Tage der Blutdruck getestet. Ich habe nun 10 einzelne Messungen pro Patient und 1000 Messungen in jeder Gruppe.

.. Let's return to a medical example. I have two groups of 100 patients taking
different medications, and I seek to establish which medication lowers blood
pressure more. I have each group take the medication for a month to allow it to
take effect, and then I follow each group for ten days, each day testing their
blood pressure. I now have ten data points per patient and 1,000 data points per
group.

Großartig! 1000 Messungen sind eine ganze Menge. Ich kann so recht einfach feststellen, welche gruppe einen niedrigeren Blugdruck als die andere hat. Wenn ich die statistische Signifikanz berechne, werden signifikante Resultate recht einfach zu finden sein.

.. Brilliant! 1,000 data points is quite a lot, and I can fairly easily establish
whether one group has lower blood pressure than the other. When I do
calculations for statistical significance I find significant results very
easily.

Moment mal... - es ist zu erwarten, dass zehn mal den Butdruck eines bestimmten patienten zu messen, zehn mal sehr ähnliche Ergebnise hervorbringt. Wenn ein Patient genetisch zu einem niedrigen Blutdruck neigt, dann wurde das Ergebniss dieser genetischen Disposition zehn mal gemessen. Wenn ich datan von 1000 Patienten gesammelt hätte anstatt wiederholt 100 Patienten zu testen könnte ich mir sicherer sein, dassn die Unterschiede ziwschen den Gruppen von der Medizin und nicht von genetischen Unterschieden zwischen den Patienten oder vom  Zufall verursacht wurden. Ich bekomme ich eher statistisch signifikante Resultate und eine größere Teststärke weil ich behauptet habe, einen großen Stichprobenumfang zu haben. Aber diese Behauptung ist nicht korrekt.

.. But wait: we expect that taking a patient's blood pressure ten times will yield
ten very similar results. If one patient is genetically predisposed to low blood
pressure, I have counted his genetics ten times. Had I collected data from 1,000
independent patients instead of repeatedly testing 100, I would be more
confident that differences between groups came from the medicines and not from
genetics and luck. I claimed a large sample size, giving me statistically
significant results and high statistical power, but my claim is unjustified.

Diese Problem ist bekannt als »Pseudoreplikation« und es ist häufig [Lazic:2010fc]_. Nachdem ein Biologe ein paar Zellen einer Zellkultur getestet hat könnte dieser die Resultate »replizieren« indem er weitere Zellen der selben Kultur testet. Neurologen können Messungen an mehreren Zellen des selben Tieres durchführen und dann fälschlich behautpten, dass sie eine große Stichprobe haben, weil sie hunderte Neuronen von nur zwei Ratten gemessen haben.

.. This problem is known as pseudoreplication, and it is quite common [Lazic:2010fc]_ .  After testing cells from a culture, a biologist might
"replicate" his results by testing more cells from the same
culture. Neuroscientists will test multiple neurons from the same animal,
incorrectly claiming they have a large sample size because they tested hundreds
of neurons from just two rats.

Statistisch ausgedrückt geschieht Pseudoreplikation wenn einzelne Messungen stark voneinander Abhängig sind. Der Wert des heutigen  Blutdrucks eines Patienten wird stark mit dem Blutdruck des Patienten am Vortag zusammenhängen und Messungen zur Bodenbeschaffenheit an einem Ort werden stark mit der Bodenbeschaffenheit an einem anderen Ort ein paar Schritte weiter zusammenhängen.

Es gobt mehrere Wege diese Abhängigkeiten in Betracht zu ziehen:

#. Berechne den Durchschnitt der Werte der voneinander abhängigen Daten. Bei der Messung von Blutdruck berechne den Durchschnitt aller Blutdruckmessungen dieses Patienten. Diese Methoden ist aber nicht perfekt: Wenn du bei einigen Patienten häufiger misst als bei anderen wird sich dies nicht in deinen Daten wiederspiegeln. Du brauchst eine Methoden, die irgendwie mehr Messungen als  Zuverlässiger zählt.
#. Analysiere jeden abhängigen Datenpunkt seperat: Du könnstest einen Analyse des Blutdrucks jedes Patienten am 5. Tag durchführen (sofern es nur eine Messung an dem Tag gab). Aber Vorsicht: Wenn du das für jeden Tag machstm bekommst du Probleme mit :ref:`Mehrfachvergleichen <multiple-comparisons>`, die wir im nächsten Kapitel diskutieren.
#. Nutze ein statistisches Modell, das die Abhängigkeiten berücksichtigt, wie ein hierarchisches Modell oder ein Zufallseffekt-Modell.

.. In statistical terms, pseudoreplication occurs when individual observations are
heavily dependent on each other. Your measurement of a patient's blood pressure
will be highly related to his blood pressure yesterday, and your measurement of
soil composition here will be highly correlated with your measurement five feet
away. There are several ways to account for this dependence while performing
your statistical analysis:

#. Average the dependent data points. For example, average all the blood
   pressure measurements taken from a single person. This isn't perfect, though;
   if you measured some patients more frequently than others, this won't be
   reflected in the averaged number. You want a method that somehow counts
   measurements as more reliable as more are taken.
#. Analyze each dependent data point separately. You could perform an analysis
   of every patient's blood pressure on day 5, giving you only one data point per
   person. But be careful, because if you do this for every day, you'll have
   problems with :ref:`multiple comparisons <multiple-comparisons>`, which we
   will discuss in the next chapter.
#. Use a statistical model which accounts for the dependence, like a
   hierarchical model or random effects model.

.. TODO: was ist ein hierarchisches modell? ANCOVA?

Es ist wichtig diese verschiednene Ansätze zu bedenkten bevor du deine Daten analysierst, weil jede dieser Methoden für unterschiedliche Situationen geeignet ist.

Pseudoreplikation macht es einfach die gewünschte Signifikanzu zu erreichen obwohl nur wenige zusätzliche Information zu dem Testteilnehmern verfügbar ist. Forscher müssten vorsichtig sein, ihre Stichprobengröße nicht künstlich aufzublasen wenn sie Tests mehrfach mit den selben Testpersonen durchführen.

.. t's important to consider each approach before analyzing your data, as each
method is suited to different situations. Pseudoreplication makes it easy to
achieve significance, even though it gives you little additional information on
the test subjects. Researchers must be careful not to artificially inflate their
sample sizes when they retest samples.


.. [Lazic:2010fc] Lazic, Stanley E. "The problem of pseudoreplication in neuroscientific studies: is it affecting your analysis?." BMC neuroscience 11.1 (2010): 5.
