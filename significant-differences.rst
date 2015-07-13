**************************************************************************
Wenn Unterschiede in der Signifikanz keine signifikanten Unterschiede sind
**************************************************************************



.. ***************************************************************
.. When differences in significance aren't significant differences
.. ***************************************************************

»Wir haben die Behandlungsmöglichkeiten A und B mit einem Placebo verglichen. Behandlung A zeigte einen signifikanten vorteil gegenüber einem Placebo, während Behandlung B keinen statistisch signifikanten Vorteil hatte. Deshalb ist Behandlung A besser als B.«

.. "We compared treatments A and B with a placebo. Treatment A showed a significant benefit over placebo, while  treatment B had no statistically significant benefit. Therefore, treatment A is better than treatment B."

Wir hören das immer wieder. Es ist ein einfacher Weg, Wirkstoffe zu vergleichen, chirugische Eingriffe, Therapien und Ergebnisse von Experimenten. Es ist klar. Es scheint sinnvoll zu sein.

.. We hear this all the time. It's an easy way of comparing medications, surgical interventions, therapies, and experimental results. It's straightforward. It seems to make sense.

Aber ein Unterschied in der Signifikanz macht nicht immer einen signifikanten Unterschied. [Gelman:2006bj]_.

.. However, a difference in significance does not always make a significant difference.\ :cite:p:`Gelman:2006bj`

Ein Grund ist die willkürliche Art der :math:`p < 0.05` Schwelle. Wir könnten zwei sehr ähnliche Resultate bekommen, mit :math:`p = 0.04` und :math:`p = 0.06` und fälschlicherweise sagen, die Ergebnisse seien klar unterschiedlich, denn sie sind auf unterschiedlichen Seiten der Schwelle. Der zweite Grund ist, dass p-Werte kein Maß der Effektgröße sind: Ähnliche p-Werte bedeuten keine ähnlich großen Effekte. Zwei Ergebnisse mit gleicher Signifikanz können sich nichtsdestotrotz wiedersprechen.

.. One reason is the arbitrary nature of the :math:`p < 0.05` cutoff. We could get two very similar results, with :math:`p = 0.04` and :math:`p = 0.06`, and mistakenly say they're clearly different from each other simply because they fall on opposite sides of the cutoff. The second reason is that *p* values are  not measures of effect size, so similar *p* values do not always mean similar effects. Two results with identical statistical significance can nonetheless contradict each other.

Stattdessen, solltest du an Teststärke denken. Wen wir unsere neuen, experimentellen Medikamente Reparol und Lösivin mit einem Placebo vergleichen, aber nicht genug Teilnehmer haben um eine gute Teststärke zu erreichen, werden wir Vorteile übersehen. Wenn die Medikamente die selbe Auswirkung haben, aber unser versuch nur 50% teststärke, dann ist die Wahrscheinlichkeit hoch, dass wir am Ende sagen, dass z.B. Reparol signifikante Auswirkungen hat aber Lösivin nicht. Mach den Versuch nochmal und es ist genau so wahrscheinlihch, dass statt Reperol nun Lösivin wirksam erscheint.

.. Instead, think about statistical power. If we compare our new experimental drugs Fixitol and Solvix to a  placebo but we don't have enough test subjects to give us good statistical power, then we may fail to notice their benefits. If they have identical effects but we have only 50% power, then there's a good chance  we'll say Fixitol has significant benefits and Solvix does not. Run the trial again, and it's just as likely that Solvix will appear beneficial and Fixitol will not.

Anstatt die Wirkstoffe je mit einem Placebo zu vergleichen, sollten wir die Wirkstoffe direkt gegenüberstellen. Wir können die Hypothese testen, ob die Wirkstoffe gleich effektiv sind oder wir erstellen ein Konfidenzinterval für den Vorteil von Lösivin gegenüber Reparol. Wenn das Konfidenzinterval Null einschließt könnten beide gleich wirksam sein; Wenn nicht gibt es einen klaren Gewinner. Das verbessert zwar nicht die Teststärke aber schützt vor dem falschen Folgerung dass die Medikamente sich unterscheiden. Unsere Neigung nach Unterschieden zwischen Signifikanzen (hier gegenüber dem Placebo) zu prüfen sollte durch einen Überprüfung der signifikanz des Unterschiedes ersetzt werden.

.. Instead of independently comparing each drug to the placebo, we should compare them against each other. We can test the hypothesis that they are equally effective, or we can construct a confidence interval for the extra benefit of Fixitol over Solvix. If the interval includes zero, then they could be equally effective; if it doesn't, then one medication is a clear winner. This doesn't improve our statistical power, but it does prevent  the false conclusion that the drugs are different. Our tendency to look for a difference in significance should be replaced by a check for the significance of the difference.

Beispiele für diesen Fehler sind finden sich zuhauf in der üblichen Literatur und in Nachrichtenmeldungen. Viele Veröffentlichungen in den Neurowissenschaften machen diesen Fehler _[Nieuwenhuis:2011dm]. Vielleicht erinnerst du dich auch an eine Studie die vor Jahren behauptete, dass Männer mit älteren biologischen Brüdern eher homosexuell seien _[Bogaert:2006tc].

.. Examples of this error in common literature and news stories abound. A huge  proportion of papers in neuroscience, for instance, commit the error.\ :cite:p:`Nieuwenhuis:2011dm` You might also remember a study a few years  ago suggesting that men with more biological older brothers are more likely to  be homosexual.\ :cite:p:`Bogaert:2006tc` How did they reach this conclusion? And why older brothers and not older sisters?

Die Autoren erklären ihr Ergebnis damit, dass die verschiedene Faktoren und ihre Auswirkungen auf homosexualität analysiert haben. Nur die Anzahl der ältern Brüder hatte  statistisch signifikante Auswirkungen; die Anzahl von älteren schwestern oder die Anzhal nicht biologischer (z.B. adoptierte) Brüder  hatte keine signifikante Auswirkungen.

.. The authors explain their conclusion by noting that they ran an analysis of various factors and their effect on homosexuality. Only the number of older brothers had a statistically significant effect; number of older sisters, or number of nonbiological older brothers, had no statistically significant effect.

Aber wie wir gesehen haben garantieren die unterschiedlichen Signifikanzen nicht, dass es einen relevanten Unterschied zwischen den Auswirkungen von ältern Brüdern und älternen Schwestern gibt. Bei einem genauerem Blick auf die daten scheint es, ess es keinen statistisch signifikanten Unterschied zwischen den Auswirkungen von älteren Schwestern und älteren Brüdern gäbe. Leider wurden in der Publikation nicht genug Daten veröffentlicht um das selber nachzurechnen [Gelman:2006bj]_.

.. But as we've seen, that doesn't guarantee that there's a significant difference between the effects of older brothers and older sisters. In fact, taking a closer look at the data, it appears there's no statistically significant difference between the effect of older brothers and older sisters. Unfortunately, not enough data was published in the paper to allow a direct calculation.\ :cite:p:`Gelman:2006bj`

.. index:: confidence interval, standard error, standard deviation

.. _confidence-intervals:

.. When significant differences are missed
.. ---------------------------------------

Wenn signifikante Ergebnisse übersehen werden
---------------------------------------------

Es gibt auch das umgekehrte Problem. Wissenschaftler beurteilen üblicherweise durch das anschauen von Digarmmen wie dem folgenden, ob eine signifikante Differenz besteht:

.. The problem can run the other way. Scientists routinely judge whether a significant difference exists simply by eye, making use of plots like this one:

.. figure:: plots/confidence.*
   :alt: Diagramme zweier mathematischer Durchschnittswerte mit sich überlappenden Konfidenzintervallen.

Stell dir vor, die beiden Diagramme zeigen die geschätzte Zeit bis zur Genesung von einer Krankheit in zwei Patientengruppen, in jeder Gruppe mit 10 Patienten. Drei verschiedene Sachen könnten durch die Fehlerbalken gezeigt werden:

#. Die Standardabweichung der Messungen. Berechnet wurde, wie wie weit jede Beobachtung vom Durchschnitt entfernt ist, jede dieser Differenzen wurde quadriert, der Durchschnitt über diese quadrierten Differenzen errechnet und dann von dem Durchschnitt die Quadratwurzel gezogen. Das Ergebnis ist die Standardabweichung und misst, wieweit die Messungen vom Durchschnitt über alle  Messungen abweichen.
#. Die Standardabweichung eines Schätzwertes. Zum Beispiel die die Fehlerbalken vielleicht die Standardfehler des arithmetischen Mittelwertes. Wenn wir verschiedene Stichproben aus Patienten sammeln, und jede Stichprobe genau *n* Patienten hat, kann ich schätzen, dass meine Berechnung der durchschnittlichen Zeit bis zur Heilung in 68% aller Fälle *innerhalb eines Standardfehlers* von der »wirklichen« Zeit entfernt liegt (Im Falle der Abschätzung von Durchschnittswerten ist der Standardfehler die standardabweichung der Messungen, geteilt durch die Quadratwurzel der Anzahl der Messungen. Die Abschätzung wird also langsam besser, je mehr Daten du hast) Viele statistische Methoden wie die »Least-Square-Regression« (Methode der kleinesten Quadrate) geben eine Abschätzung des Standardfehlers.
#. Das Koonfidenzinterval eines Schätzwertes. Ein 95% Konfidenzinterval ist so berechnet dass es den wahren Schätzwert in 95 von 100 Stichproben enthält. Es ist ungefähr 2 Standardfehler in jede Richtung breit (In komplizierten statistischen Modellen ist das möglichweise nicht ganz richtig.)

.. Imagine the two plotted points indicate the estimated time until recovery from some disease in two different groups of patients, each containing ten patients. There are three different things those error bars could represent:

.. #. The standard deviation of the measurements. Calculate how far each    observation is from the average, square each difference, and then average the    results and take the square root. This is the standard deviation,  and it    measures how spread out the measurements are from their mean.
.. #. The standard error of some estimator. For example, perhaps the error bars are    the standard error of the mean. If I were to measure many different samples   of patients, each containing exactly *n* subjects, I can estimate that 68% of the mean times to recover I measure will be within one standard error of   "real" average time to recover. (In the case of estimating means, the   standard error is the standard deviation of the measurements divided by the   square root of the number of measurements, so the estimate gets better as you   get more data -- but not too fast.) Many statistical techniques, like   least-squares regression, provide standard error estimates for their results.
#. The confidence interval of some estimator. A 95% confidence interval is   mathematically constructed to include the true value for 95 random samples   out of 100, so it spans roughly two standard errors in each direction. (In   more complicated statistical models this may not be exactly true.)



.. These three options are all different. The standard deviation is a simplemeasurement of my data. The standard error tells me how a statistic, like a meanor the slope of a best-fit line, would likely vary if I take many samples of patients. A confidence interval is similar, with an additional guarantee that 95% of 95% confidence intervals should include the "true" value.

.. TODO: What is a meanor?!? (in:»…how a statistic, like a meanor the slope of a best-fit line, would likely vary…«)

Dies sind drei verschiedene Möglichkeiten: Die Standardabweichung ist ein einfacher Wert, den ich aus meinen Daten errechne; der Standardfehler sagt mir wie eine Statisik, wie z.B. die steigung einer gefitteten linearen Funktion zwischen verschiedenen Stichproben variieren würde. Ein Konfidenzinterval ist ähnlich – mit der zusätzlichen Garantie, dass – bei einem 95%-Konfidenzinterval – 95% der Konfidenzintervalle den wirklichen Wert (den der Population) enthalten.

In dem Beispieldiagramm haben wir zwei 95% Konfidenzintervale, die sich überschneiden. Viele Forscher würden das betrachten und schlussfolgern, dass es keinen statistisch signifikanten Unterschied zwischen den Gruppen gibt. Immerhin Gruppe 1 und Gruppe 2 *sind vielleicht nicht* unterschiedlich – die Anzahlder  durchschnittlichen Tage bis zur Heilung könnte in beiden Gruppen z.B. 25 sein und die Unterschiede in den Messungen sind zufällig. Aber bedeutet das, dass der Unterschied statistisch nicht signifikant ist? Was sind die :ref:`p werte <p-values>`?

.. In the example plot, we have two 95% confidence intervals which overlap. Many scientists would view this and conclude there is no statistically significant difference between the groups. After all, groups 1 and 2 *might not* be different -- the average time to recover could be 25 in both groups, for example, and the differences only appeared because group 1 was lucky this time. But does this mean the difference is not statistically significant? What would the :ref:`p value <p-values>` be?

In diesem, Fall haben wir :math:`p< 0.05`. Es gibt einen statistisch signifikanten Unterschied obwohl sich die Bereiche der Konfidenzintervalle überschneiden. [#ttest]_

.. In this case, :math:`p< 0.05`. There is a statistically significant difference  between the groups, even though the confidence intervals overlap. [#ttest]_

Leider überspringen viele Wissenschaftler den Hypothesentest und schauen einfach auf ihre Diagramme, um zu prüfen, ob sich die Konfidenzintervalle überschneiden. Das ist tatsächlich ein sehr viel konservatieverer Test: Die Forderung, das sich die Konfidenzintervalle nicht überlappen ist in einigen Fällen vergleichbar mit der Anforderung, eine Signifikanz von :math:`p < 0.01` zu erreichen.  [Schenker:2001cr]_.

.. Unfortunately, many scientists skip hypothesis tests and simply glance at plots to see if confidence intervals overlap. This is actually a much more conservative test -- requiring confidence intervals to not overlap is akin to requiring :math:`p < 0.01` in some cases.\ :cite:p:`Schenker:2001cr` It is easyto claim two measurements are not significantly different even when they are.

Umgekehrt ist es so, dass der (visuelle) Vergleich  mittels Standardfehlern oder Standardabweichungen auch irreführend sein werden, da in den Diagrammen Standardfehler-Balken kürzer als Konfidenzinterval-Balken sind. Zwei Messungen können Standardfehler-Balken haben, die sich nicht überlappen, und doch ist der Unterschied zwischen dem beiden Gruppen nicht statistisch signifikant.

.. Conversely, comparing measurements with standard errors or standard deviations will also be misleading, as standard error bars are shorter than confidence  interval bars. Two observations might have standard errors which do not overlap,and yet the difference between the two is not statistically significant.

Eine Umfrage unter Psychologen, Neurowissenschaftlern und Medizinischen Forschern fand herraus, das die meisten von ihnen diesen einfachen Fehler machen und dass viele Wissdenschaftler Standardfehler, Standardabweichung und Konfidenzintervalle verwechseln. [Belia:2005dg]_. Diese Fehler fand sich auch in den meisten klimawissenschaftlichen Veröffentlichungen wenn in diesen zwei Gruppen mittels Fehlerbalken verglichen wurden. [Lanzante:2005hi]_. Sogar einführende Lehrbücher wie *An Introduction to Error Analysis* (»Eine Einführung in die Fehleranalyse«), bringen Studierenden bei, die Grafiken zu vergleichen und erwähnen kaum formale Methoden für Hypothesentests.

.. A survey of psychologists, neuroscientists and medical researchers found that the majority made this simple error, with many scientists confusing standard errors, standard deviations, and confidence intervals.\ :cite:p:`Belia:2005dg`Another survey of climate science papers found that a majority of papers which compared two groups with error bars made the error.\ :cite:p:`Lanzante:2005hi`Even introductory textbooks for experimental scientists, such as *An Introduction to Error Analysis*, teach students to judge by eye, hardly mentioning formal hypothesis tests at all.

Natürlich gibt es formale statistische Prozeduren die Konfidenzintervalle berechnen die visuell verglichen werden können und das sogar automatisch korrekt in :ref:`mehrfachvergleichen <multiple-comparisons>`. Beispielsweise können Gabriel comparision intervals (Gabriel-Vergleichs-Intervalle) einfach durch Anschauen interpretiert werden. [Gabriel:1978fp]_.

.. There are, of course, formal statistical procedures which generate confidence intervals which *can* be compared by eye, and even correct for :ref:`multiplecomparisons <multiple-comparisons>` automatically. For example, Gabriel comparison intervals are easily interpreted by eye.\ :cite:p:`Gabriel:1978fp`

Sich überschneidente Konfidenzintervalle bedeuten nicht das zwei Werte signifikant unterschiedlich sind. Ebenso bedeuten sich nicht berührende Fehlerbalken *nicht* das zwei Werte signifikant unterschiedlich sind. Es ist immer am besten, den geeigneten Hypothesentest zu nutzen. Sich Diagramme anzuschauen ist keinen gut definierte statistische Methode.

..Overlapping confidence intervals do not mean two values are not significantly different. Similarly, separated standard error bars do not mean two values *are*significantly different. It's always best to use the appropriate hypothesis testinstead. Your eyeball is not a well-defined statistical procedure.


.. [#ttest]
Dies wurden mit einem unabhängigen *t*-Test berechnet, basierend auf einem Standardfehler von 2,5 in Gruppe 1 und 3,5 in Gruppe 2.

.. This was calculated with an unpaired *t* test, based on a standard   error of 2.5 in group 1 and 3.5 in group 2.

.. [Gelman:2006bj] Gelman, Andrew, and Hal Stern. "The difference between “significant” and “not significant” is not itself statistically significant." The American Statistician 60.4 (2006): 328-331.

.. [Nieuwenhuis:2011dm] Nieuwenhuis, Sander, Birte U. Forstmann, and Eric-Jan Wagenmakers. "Erroneous analyses of interactions in neuroscience: a problem of significance." Nature neuroscience 14.9 (2011): 1105-1107.

.. [Bogaert:2006tc] Bogaert, Anthony F. "Biological versus nonbiological older brothers and men’s sexual orientation." Proceedings of the National Academy of Sciences 103.28 (2006): 10771-10774.

..  [Schenker:2001cr] Schenker, Nathaniel, and Jane F. Gentleman. "On judging the significance of differences by examining the overlap between confidence intervals." The American Statistician 55.3 (2001): 182-186.

.. [Belia:2005dg] Belia, Sarah, et al. "Researchers misunderstand confidence intervals and standard error bars." Psychological methods 10.4 (2005): 389.

.. [Lanzante:2005hi] Lanzante, John R. "A cautionary note on the use of error bars." Journal of climate 18.17 (2005): 3699-3703.

.. [Gabriel:1978fp] Gabriel, K. Ruben. "A simple method of multiple comparisons of means." Journal of the American Statistical Association 73.364 (1978): 724-729.
