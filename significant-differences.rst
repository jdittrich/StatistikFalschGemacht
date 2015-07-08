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

The authors explain their conclusion by noting that they ran an analysis of
various factors and their effect on homosexuality. Only the number of older
brothers had a statistically significant effect; number of older sisters, or
number of nonbiological older brothers, had no statistically significant effect.

But as we've seen, that doesn't guarantee that there's a significant difference
between the effects of older brothers and older sisters. In fact, taking a
closer look at the data, it appears there's no statistically significant
difference between the effect of older brothers and older sisters.
Unfortunately, not enough data was published in the paper to allow a direct
calculation.\ :cite:p:`Gelman:2006bj`

.. index:: confidence interval, standard error, standard deviation

.. _confidence-intervals:

When significant differences are missed
---------------------------------------

The problem can run the other way. Scientists routinely judge whether a
significant difference exists simply by eye, making use of plots like this one:

.. figure:: plots/confidence.*
   :alt: Two group means plotted with overlapping confidence intervals

Imagine the two plotted points indicate the estimated time until recovery from
some disease in two different groups of patients, each containing ten
patients. There are three different things those error bars could represent:

#. The standard deviation of the measurements. Calculate how far each
   observation is from the average, square each difference, and then average the
   results and take the square root. This is the standard deviation, and it
   measures how spread out the measurements are from their mean.
#. The standard error of some estimator. For example, perhaps the error bars are
   the standard error of the mean. If I were to measure many different samples
   of patients, each containing exactly *n* subjects, I can estimate that 68% of
   the mean times to recover I measure will be within one standard error of
   "real" average time to recover. (In the case of estimating means, the
   standard error is the standard deviation of the measurements divided by the
   square root of the number of measurements, so the estimate gets better as you
   get more data -- but not too fast.) Many statistical techniques, like
   least-squares regression, provide standard error estimates for their results.
#. The confidence interval of some estimator. A 95% confidence interval is
   mathematically constructed to include the true value for 95 random samples
   out of 100, so it spans roughly two standard errors in each direction. (In
   more complicated statistical models this may not be exactly true.)

These three options are all different. The standard deviation is a simple
measurement of my data. The standard error tells me how a statistic, like a mean
or the slope of a best-fit line, would likely vary if I take many samples of
patients. A confidence interval is similar, with an additional guarantee that
95% of 95% confidence intervals should include the "true" value.

In the example plot, we have two 95% confidence intervals which overlap. Many
scientists would view this and conclude there is no statistically significant
difference between the groups. After all, groups 1 and 2 *might not* be
different -- the average time to recover could be 25 in both groups, for
example, and the differences only appeared because group 1 was lucky this
time. But does this mean the difference is not statistically significant?  What
would the :ref:`p value <p-values>` be?

In this case, :math:`p< 0.05`. There is a statistically significant difference
between the groups, even though the confidence intervals overlap. [#ttest]_

Unfortunately, many scientists skip hypothesis tests and simply glance at plots
to see if confidence intervals overlap. This is actually a much more
conservative test -- requiring confidence intervals to not overlap is akin to
requiring :math:`p < 0.01` in some cases.\ :cite:p:`Schenker:2001cr` It is easy
to claim two measurements are not significantly different even when they are.

Conversely, comparing measurements with standard errors or standard deviations
will also be misleading, as standard error bars are shorter than confidence
interval bars. Two observations might have standard errors which do not overlap,
and yet the difference between the two is not statistically significant.

A survey of psychologists, neuroscientists and medical researchers found that
the majority made this simple error, with many scientists confusing standard
errors, standard deviations, and confidence intervals.\ :cite:p:`Belia:2005dg`
Another survey of climate science papers found that a majority of papers which
compared two groups with error bars made the error.\ :cite:p:`Lanzante:2005hi`
Even introductory textbooks for experimental scientists, such as *An
Introduction to Error Analysis*, teach students to judge by eye, hardly
mentioning formal hypothesis tests at all.

There are, of course, formal statistical procedures which generate confidence
intervals which *can* be compared by eye, and even correct for :ref:`multiple
comparisons <multiple-comparisons>` automatically. For example, Gabriel
comparison intervals are easily interpreted by eye.\ :cite:p:`Gabriel:1978fp`

Overlapping confidence intervals do not mean two values are not significantly
different. Similarly, separated standard error bars do not mean two values *are*
significantly different. It's always best to use the appropriate hypothesis test
instead. Your eyeball is not a well-defined statistical procedure.

.. [#ttest]
   This was calculated with an unpaired *t* test, based on a standard
   error of 2.5 in group 1 and 3.5 in group 2.

.. [Gelman:2006bj] Gelman, Andrew, and Hal Stern. "The difference between “significant” and “not significant” is not itself statistically significant." The American Statistician 60.4 (2006): 328-331.

.. [Nieuwenhuis:2011dm] Nieuwenhuis, Sander, Birte U. Forstmann, and Eric-Jan Wagenmakers. "Erroneous analyses of interactions in neuroscience: a problem of significance." Nature neuroscience 14.9 (2011): 1105-1107.

.. [Bogaert:2006tc] Bogaert, Anthony F. "Biological versus nonbiological older brothers and men’s sexual orientation." Proceedings of the National Academy of Sciences 103.28 (2006): 10771-10774.
