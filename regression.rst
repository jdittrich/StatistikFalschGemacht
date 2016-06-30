.. index:: stopping rules, p value; in stopping rules

.. _stopping-rules:

********************************************
Stopregeln und Regression zum Durchschnitt
********************************************

.. *****************************************
.. Stopping rules and regression to the mean
.. *****************************************

Medizinische Studien sind teuer. Duzende Patienten mit der experimentellen Medikaution zu versorgen und ihre Symptome mehrere Monate lang zu verfolgen, bedeutet einen großen Aufwand. Deshalb haben viele Pharmaunternehmen »Stopregeln« entwickelt, die es den Forschern erlauben, eine Studie vorzeitig zu beeinden wenn es klar ist, das die zu untersuchende Medikation wesentliche Auswirkungen hat. Wenn beispielseweise nach der Hälfte der Untersuchung schon eine statistisch signifikante Differenz der Syptome durch das neue Medikament verursacht wurde, beenden die Forscher vielleicht die Studie, anstatt mehr Daten zu sammeln die das Ergebnis untermauern.

.. Medical trials are expensive. Supplying dozens of patients with experimental medications and tracking their symptoms over the course of months takes significant resources, and so many pharmaceutical companies develop "stopping rules," which allow investigators to end a study early if it's clear the experimental drug has a substantial effect. For example, if the trial is only half complete but there's already a statistically significant difference in symptoms with the new medication, the researchers may terminate the study, rather than gathering more data to reinforce the conclusion.

Wenn es schlecht umgesetzt wird, kann das aber zu vielen fälschlicherweise positiven Ergebnissen führen.

.. When poorly done, however, this can lead to numerous false positives.

Stellt dir beispielsweise vor, wir vergleichen zwei Patientengruppen, eine mit einem Medikament und eine mit einem Placebo. Wir messen das Vorkommen eines Eiweißes in ihrem Blut um zu überprüfen ob das Medikament eine Wirkung hat. In diesem Fall aber, verursacht das Medikament garkeien Änderung: Patienten in beiden Gruppen haben die selbe Menge des Proteins im Blut, obwohl natürlich Personen untereinander leicht unterschiedliche Proteinmengen ausweisen.

.. For example, suppose we're comparing two groups of patients, one with a medication and one with a placebo. We measure the level of some protein in their bloodstreams as a way of seeing if the medication is working.  In this case, though, the medication causes no difference whatsoever: patients in both groups have the same average protein levels, although of course individuals have levels which vary slightly.

wir beginnen mit zehn Patienten in jeder Testgruppe und sammeln Schritt für Schritt daten von zusätzlichen Patienten. Währenddessen machen wir einen *t*-Test um die Gruppen zu vergleichen und zu sehen, ob es einen statistisch signifikanten Unterschied zwischen den Proteinmengen gibt. Wir sehen vielleicht ein Resultat wie in dieser Simulation:

.. We start with ten patients in each group, and gradually collect more data from more patients. As we go along, we do a *t* test to compare the two groups and see if there is a statistically significant difference between average protein levels. We might see a result like this simulation:

.. figure:: /plots/sample-size.*
   :alt:

Dieses Diagram zeigt den *p*-Wert der Differend zwischen den Gruppen während wir mehr Daten sammeln. Die horizontale Linie zeigt das :math:`p = 0.05`Niveau der Signifikanz. Zuerst scheint es keinen signifikanten Unterschied zu geben. Dann sammeln wir mehr Daten und finden schlussfolgern, dass es einen signifikanten Unterschied gibt. Wenn wir jetzt stoppen, sind wir fehlgeleitet: Wir glauben, dass es einen signifikanten Unterschied zwischen den Gruppen gibt, obwohl in Wirklichkeit keinen gibt. Wenn wir noch mehr Daten sammeln, werden wir sehen, dass wir falsch lagen – oder mit ein bisschen Glück wieder ein falsch-positives Ergebnis bekommen.

.. This plot shows the *p* value of the difference between groups as we collect more data, with the horizontal line indicating the :math:`p = 0.05` level of significance. At first, there appears to be no significant difference. Then we collect more data and conclude there is.  If we were to stop, we'd be misled: we'd believe there is a significant difference between groups when there is none. As we collect yet more data, we realize we were mistaken -- but then a bit of luck leads us back to a false positive.

Du könntest denken, dass der Einbruch der p-Werte garnicht auftreten sollte, weil es keinen wirklichen Unterschied zwischen den Gruppen gib. Immerhin, mehr Daten zu erheben, sollte dein Ergebnis nicht *verschlechtern*?! Wenn wir den Versuch mochmal machen würden, würden wir vielleicht sehen, dass die Gruppen am geginn der Datensammlung keinen signifikanten Unterschied aufweisen und das so bleibt, wenn wir mehr Daten erheben, oder dass wir mit einem großen Unterschied beginnen der sich aber schnell zu nichts zurückentwickelt. Aber wenn wir lang genug warten und nach jedem Datenpunkt testen, werden wir letztendlich *jedes* Signifikantanzniveau bekommen, auch wenn es in Wirklichkeit keinen Unterschied zwischen den Gruppen gibt. Wir können keinen unendlich großen Stichproben nehmen, in der Praxis kommt es deshalb nicht immer dazu das wir ein beliebiges Signifikanzniveau erreichen. Aber schlecht gesetzte Stopregeln erhöhen trotdem die Rate der fälschlicherweise positiven Ergebnisse ganz erheblich [Simmons:2011iw]_ .

.. You'd expect that the *p* value dip shouldn't happen, since there's no real difference between groups. After all, taking more data shouldn't make our conclusions worse, right? And it's true that if we run the trial again we might find that the groups start out with no significant difference and stay that way as we collect more data, or start with a huge difference and quickly regress to having none. But if we wait long enough and test after every data point, we will eventually cross *any* arbitrary line of statistical significance, even if there's no real difference at all. We can't usually collect infinite samples, so in practice this doesn't always happen, but poorly implemented stopping rules still increase false positive rates significantly.\ :cite:p:`Simmons:2011iw`

Für moderne klinische Studien müssen oftmals die statistischen Verfahren im Voraus registriet werden. Es durfen auch nur einige festgelegte Auswertungspunkte im Voraus festgelegt werden, an denen die Daten ausgewertet werden – statt nach jeder neuen Messung analysieren zu können. Ein solches Vorgehen führt nur zu einer kleinen vergrößerung der Rate an falsch-positiven Ergebnissen, was durch eine sorgfältige Auswahl der Signifikanzlevel und fortgeschrittene Analysiemethoden ausgeglichen werden kann [Todd:2001hg]_ .

.. Modern clinical trials are often required to register their statistical protocols in advance, and generally pre-select only a few evaluation points at which they test their evidence, rather than testing after every observation. This causes only a small increase in the false positive rate, which can be adjusted for by carefully choosing the required significance levels and using more advanced statistical techniques.\ :cite:p:`Todd:2001hg` But in fields where protocols are not registered and researchers have the freedom to use whatever methods they feel appropriate, there may be false positive demons lurking.

.. index:: truth inflation, power; truth inflation
   see: winner's curse; truth inflation

.. _truth-inflation:


Wahrheitsinflation
------------------

.. TODO: Dem Inhalt nach ist es eher eine Wirksamkeitsinflation (?!)


.. Truth inflation
.. ---------------

Medizinische Versuche haben oft eine unzureichende Teststärke um moderate unterschiede zwischen Medikationen zu finden. Man will die Versuche stoppen, sobald ein Effekt erkannt wird, aber die Versuche haben eine zu geringe Teststärke.

.. Medical trials also tend to have inadequate statistical power to detect moderate differences between medications. So they want to stop as soon as they detect an effect, but they don't have the power to detect effects.

Stell dir vor, ein Medikament reduziert die Symptome um 20% gegenüber einem Placebo – aber der Versuch, in dem du die Wirkung überprüfst, hat eine zuzureichende Teststärke um den Unterschied zu finden. Wir wissen das die Ergebnisse kleine Versuche variieren: Es ist wahrscheinlich, ab und an durch Zufall zehn Patienten in der Testgruppe zu haben, deren Erkältung schneller als gewöhnlich abklingt. Es ist viel unwahrscheinlicher, dass *zufällig* bei zehntausend Patienten die Erkältung kürzer ist.

.. Suppose a medication reduces symptoms by 20% over a placebo, but the trial you're using to test it does not have adequate statistical power to detect this difference. We know that small trials tend to have varying results: it's easy to get ten lucky patients who have shorter colds than usual, but much harder to get ten thousand who all do.

Jetzt stell dir vor das wir den Versuch immer wieder durchführen. Manchmal gibt es Patienten die Pech haben und deshalb siehtst du keine dignifikanten Verbesserungen durch dein Medikament. Manchmal sind die Patienten durchschnittlich und die Gruppe, die das Medikament bekommt, hat eine Symptomreduktion von 20% – aber die Gruppe ist zu klein, du hast zuwenig Daten, sodass dieser Unterschied nicht statistisch signifikant ist. Manchmalhaben die Patienten Glück, und sie Symptome reduzieren sich stärker als die durchschnittlichen 20%. Du stoppst den Versuch und sagst »Schaut her! Es funktioniert!«

.. Now imagine running many copies of this trial. Sometimes you get unlucky patients, and so you don't notice any statistically significant improvement from your drug. Sometimes your patients are exactly average, and the treatment group has their symptoms reduced by 20% -- but you don't have enough data to call this a statistically significant increase, so you ignore it. Sometimes the patients are lucky and have their symptoms reduced by much more than 20%, and so you stop the trial and say "Look! It works!"

Du hast richtigerweise gefolgert, dass dein Medikament funktioniert. Du hast aber die Größe des Effektes künstlich vergrößert und glaubst fälschlicherweise das das Medikament eine viel stärker wirkt, als es dies tatsächlich tut.

.. You've correctly concluded that your medication is effective, but you've
inflated the size of its effect. You falsely believe it is much more effective
than it really is.

Der Effekt tritt auf in pharmakologischen Studien, epidemiologischen Studien, Studien zu genetischer Assoziation (»Gen A verursacht B«), psychologischen Studien und in einigen der meistzitierten Veröffentlichungen der medizinischen Literatur [Ioannidis:2008dy]_ [Ioannidis:2005gy]_ . Wenn Versuche von vielen verschiedenen Forschern gleichzeitig durchgeführt werden können (wie in Studien zu genetischer Assoziation) sind die frühesten veröffentlichten Ergebnisse oft sehr wiedersprüchlich, weil kleine Versuche und die Erfordernis der statistischen Signifikanz dazu führen, dass nur die extremsten Ergebnisse publiziert werden [Ioannidis:2005bj]_ .

.. This effect occurs in pharmacological trials, epidemiological studies, gene association studies ("gene A causes condition B"), psychological studies, and in some of the most-cited papers in the medical literature.\ :cite:p:`Ioannidis:2008dy,Ioannidis:2005gy` In fields where trials can be conducted quickly by many independent researchers (such as gene association studies), the earliest published results are often wildly contradictory, because small trials and a demand for statistical significance cause only the most extreme results to be published.\ :cite:p:`Ioannidis:2005bj`

Noch dazu kann Wahrheitsinflation mit frühen Stopregeln zusammenwirken. Wenn die meisten Medikamente in klinischen versuchen nicht effektiv genug sind um den Versuch rasch zu stoppen, dann sind viele Versuche die früh gestoppt werden, darin Begründet, dass Patienten Glück hatten, und nicht darin, dass die Medikamente so großartig sind - und dadurch, dass viele Versuche früh gestoppt werden berauben wir uns der zusätzlichen Daten die nötig wäre um diese beiden Möglichkeiten auseinanderzuhalten. Reviews haben früh gestoppte Versuche mit anderen Versuchen verglichen, die die selbe Forschungsfrage hatten, aber nicht früh gestoppt wurden. In den meisten Fällen haben die früh gestoppten Versuche die Effekte der getesteten Behandlungsform überschätzt - im Durchschnitt um 29% [Bassler:2010ds]_ .

.. As a bonus, truth inflation can combine forces with early stopping rules. If most drugs in clinical trials are not quite so effective to warrant stopping the trial early, then many trials stopped early will be the result of lucky patients, not brilliant drugs -- and by stopping the trial we have deprived ourself of the extra data needed to tell the difference. Reviews have compared trials stopped early with other studies addressing the same question which did not stop early; in most cases, the trials stopped early exaggerated the effects of their tested treatments by an average of 29%.\ :cite:p:`Bassler:2010ds`

Natürlich kennen wir nicht *Die Wahrheit* über jedes Medikament das überprüft wird, sodass wir nicht sagen können ob eine bestimmte Studie früh gestoppt wurde, weil die Patienten einfach Glück hatten oder weil das Medikament tatsächlich so gut war. Viele Studien veröffentlichen nichtmals die eigentlich beabsichtigte Stichprobengröße oder die Stopregel die genutzt wurde um den Abbruch der Studie zu rechtfertige [Montori:2005bo]_. Das frühe Stoppen eines Versuches ist kein automatischer Beweis, dass die Ergebnisse vewrzerrt sind, aber es ist ein hinweisendes Setail.

.. Of course, we do not know The Truth about any drug being studied, so we cannot tell if a particular study stopped early due to luck or a particularly good drug. Many studies do not even publish the original intended sample size or the stopping rule which was used to justify terminating the study. \ :cite:p:`Montori:2005bo` A trial's early stoppage is not automatic evidence that its results are biased, but it *is* a suggestive detail.

.. index:: de Moivre's equation, sample size

.. Little extremes
.. ---------------

Kleine Extrema
---------------

Stell dir vor, du seist verantwortlich für einen Reform staatlicher Schulen. Als Teil deiner Forschung zu den besten Lehrmethoden schaust du dir die Auswirkungen der Schulgröße auf die Punktezahlen der Schüle in standardisierten Tests an. Sind kleine Schulen besser als große? Solltest du versuchen viele kleine Schulen zu bauen, oder wenige große?

.. Suppose you're in charge of public school reform. As part of your research into the best teaching methods, you look at the effect of school size on standardized test scores. Do smaller schools perform better than larger schools? Should you try to build many small schools or a few large schools?

Um diese Frage zu beantworten erstellst du eine Liste der Schulen mit den höchsten Leistungen. Die Durchschnittliche Schule hat 1000 Schüler, aber die besten fünf oder zehn Schulen sind fast alle kleiner als das. Es scheint als ob kleine Schulen am besten sind, vielleicht weil sie eine persönliche Athnosphäre haben in der Lehrer die Schüler kennenlernen und ihnen individuell helfen können.

.. To answer this question, you compile a list of the highest-performing schools you have. The average school has about 1,000 students, but the top-scoring five or ten schools are almost all smaller than that. It seems that  small schools do the best, perhaps because of their personal atmosphere where teachers can get to know students and help them individually.

Dann schaust du die die schlechtesten Schulen an. Du erwartest, dass sie alle große Städtische Schulen mit tausenden von Schülern und überarbeiteten Lehrern sind. Überaschung! Auch die schlechtesten Schulen sind alle klein.

.. Then you take a look at the worst-performing schools, expecting them to be large urban schools with thousands of students and overworked teachers. Surprise! They're all small schools too.

Was passiert hier? Nun, schau auf einen Plot der Testergebnisse und der Schulgröße:

... What's going on? Well, take a look at a plot of test scores vs. school size:

.. figure:: /plots/school-size.*
   :alt:

Die durchschnittlichen Testergebnisse variieren stärker bei kleinen Schulen, einfach weil sie weniger Schüler haben. Mit weniger Schülern gibt es weniger Daten anhand derer die »wirkliche« Leistung der Lehrer festgestellt werden kann. Dadurch varrieren die Durschnittliche Punktzahlen stärker. Bei größeren Schulen variieren die Testergebnisse weniger und sind im Durchschnitt sogar *höher*. 

.. Smaller schools have more widely varying average test scores, entirely because
they have fewer students. With fewer students, there are fewer data points to
establish the "true" performance of the teachers, and so the average scores vary
widely. As schools get larger, test scores vary less, and in fact *increase* on
average.

Dieses Beispiel nutzt simulierte Daten, aber es basiert auf echten (und überrschenden) Messungen an öffentlichen Schulen in Pennsylvania \ :cite:p:`Wainer:2007wr` .

.. This example used simulated data, but it's based on real (and surprising)
observations of Pennsylvania public schools.\ :cite:p:`Wainer:2007wr`

Another example: In the United States, counties with the lowest rates of
:index:`kidney cancer` tend to be Midwestern, Southern and Western rural
counties. How could this be? You can think of many explanations: rural people
get more exercise, inhale less polluted air, and perhaps lead less stressful
lives. Perhaps these factors lower their cancer rates.

On the other hand, counties with the highest rates of kidney cancer tend to be
Midwestern, Southern and Western rural counties.

The problem, of course, is that rural counties have the smallest populations. A
single kidney cancer patient in a county with ten residents gives that county
the highest kidney cancer rate in the nation. Small counties hence have vastly
more variable kidney cancer rates, simply because they have so few
residents.\ :cite:p:`Gelman:1999gi`

.. [Simmons:2011iw] Simmons, Joseph P., Leif D. Nelson, and Uri Simonsohn. "False-positive psychology undisclosed flexibility in data collection and analysis allows presenting anything as significant." Psychological science (2011): 0956797611417632.

.. [Todd:2001hg] Todd, Susan, et al. "Interim analyses and sequential designs in phase III studies." British journal of clinical pharmacology 51.5 (2001): 394-399.

.. [Ioannidis:2008dy] Ioannidis, John PA. "Why most discovered true associations are inflated." Epidemiology 19.5 (2008): 640-648.

.. [Ioannidis:2005gy] Ioannidis, John PA. "Contradicted and initially stronger effects in highly cited clinical research." Jama 294.2 (2005): 218-228.

.. [Ioannidis:2005bj] Ioannidis, John PA, and Thomas A. Trikalinos. "Early extreme contradictory estimates may appear in published research: The Proteus phenomenon in molecular genetics research and randomized trials." Journal of clinical epidemiology 58.6 (2005): 543-549.

.. [Bassler:2010ds] Bassler, Dirk, et al. "Stopping randomized trials early for benefit and estimation of treatment effects: systematic review and meta-regression analysis." Jama 303.12 (2010): 1180-1187.

.. [Montori:2005bo] Montori, Victor M., et al. "Randomized trials stopped early for benefit: a systematic review." JOURNAL-AMERICAN MEDICAL ASSOCIATION 294.17 (2005): 2203.

.. [Wainer:2007wr] Wainer, Howard. "The most dangerous equation." American Scientist 95.3 (2007): 249.
