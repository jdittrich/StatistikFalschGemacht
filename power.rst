.. index::
   single: power
   see: statistical power; power

.. _power:

Teststärke und geschwächte Tests

.. unable to translate joke

.. Statistical power and underpowered statistics
=============================================

Wir haben gesehen, dass es möglich ist, einen existierenden unterschied nicht zu erkennen, weil nicht genug Daten vorhanden waren. In den meisten Fällen ist dass ein Problem: Wir könnten einen wirksame Medizin nicht erkennen oder eine wichtige Nebenwirkung übersehen. Wie können wir feststellen, wieviel Daten wir brauchen?

.. We've seen that it's possible to miss a real effect simply by not taking enough
data. In most cases, this is a problem: we might miss a viable medicine or fail
to notice an important side-effect. How do we know how much data to collect?

Statistiker geben die Antwort als »Teststärke«. Die Teststärke einen Studie ist die Wahrscheinlichkeit dass diese eine wirklichen Unterschied einer bestimmten Größe von einen Unterschied durch puren Zufall auseinanderhalten kann. Eine Studie kann sicher eine sehr wirksame Medizin erkennen, aber einen kleinen Unterschied aufzudecken ist viel unwahrscheinlicher. Probieren wir es an einem kleinen Beispiel aus:

.. Statisticians provide the answer in the form of "statistical power." The power
of a study is the likelihood that it will distinguish an effect of a certain
size from pure luck. A study might easily detect a huge benefit from a
medication, but detecting a subtle difference is much less likely. Let's try a
simple example.

Stell dir vor, ein Glücksspieler ist davon überzeugt, dass sein Spielgegner eine manipulierte Münze: Anstatt in 50% der Fälle »Kopf« und in 50% der Fälle »Zahl« zu zeigen, ist das Verhältnis anders und der Gegner nutzt dies um bei den langweiligen Münzwurf-Spielen auch noch zu mogeln. Wie könnten wir das beweisen?

.. Suppose a gambler is convinced that an opponent has an unfair coin: rather than
getting heads half the time and tails half the time, the proportion is
different, and the opponent is using this to cheat at incredibly boring
coin-flipping games. How to prove it?

Es ist nicht möglich den Beweis zu erbringen indem man eine Münze 100-mal wirft und dann zählt wir oft es »Kopf« gab. Sogar mit einer absolut fairen Münze wirst du nicht immer fünfzig mal »Kopf« bekommen.

.. You can't just flip the coin a hundred times and count the heads. Even with a
perfectly fair coin, you don't always get fifty heads:

.. figure:: /plots/binomial.*

  Das zeigt die Wahrscheinlichkeit für verschiedene Anzahlen von »Kopf« wenn du eine Münze hundertmal wirfst.

.. This shows the likelihood of getting different numbers of heads, if you flip a
  coin a hundred times.

Du siehst: 50 mal »Kopf« ist das wahrscheinlichste Ergebnis, aber es ist auch gut möglich 45 oder 57 mal »Kopf« bei hundert Würfen zu bekommen. Wenn du also 57 mal »kopf« bekommst kann es sein das die Münze manipuliert ist - oder aber, dass es einfach Zufall ist.

.. You can see that 50 heads is the most likely option, but it's also reasonably
likely to get 45 or 57. So if you get 57 heads, the coin might be rigged, but
you might just be lucky.

Rechnen wir es aus. Nehmen wir an wir wollen einen p-Wert von 0,05 oder niedriger, wie in der Wissenschaft üblich. Das bedeutet, wenn die Anzahl von »Kopf« nach 10 oder 100 oder irgendeiner andere Zahl von Würfen von der erwarteten Anzahl abweicht (die hälfte Kopf, die hälfte Zahl), dann beschließe ich, dass die Münze dann manipuliert ist, *wenn* es nur eine 5%-Wahrscheinlichkeit gibt, dass eine solche Abweichung (oder mehr) bei einer nicht manipulierten Münze vorkommt. Wenn die Whrscheinlichkeit größer als 5% ist, kann ich nichts beschließen: Die Münze könnte unmanipuliert sein, oder eine Seite tatsächlich ein wenig häufiger zeigen.

.. TODO: Ist das:» es nur eine 5%-Wahrscheinlichkeit gibt, dass eine solche Abweichung **(oder mehr)** ODER »es nur eine 5%-Wahrscheinlichkeit **(oder weniger)** gibt, dass eine solche Abweichung **(oder mehr)** ODER »es nur eine 5%-Wahrscheinlichkeit **(oder weniger)** gibt, dass eine solche Abweichung ICH WÜRDE DIE VERSION MIT DEN 2 KLAMMERN ANNEHMEN

.. Let's work out the math. Let's say we look for a *p* value of 0.05 or less, as
scientists typically do. That is, if I count up the number of heads after 10 or
100 trials and find a deviation from what I'd expect -- half heads, half tails
-- I call the coin unfair if there's only a 5% chance of getting a deviation
that size or larger with a fair coin. Otherwise, I can conclude nothing: the
coin may be fair, or it may be only a little unfair. I can't tell.

Also, was passiert, wenn ich die fragliche Münze zehm mal werfer und diese Kriterien anwende?

.. So, what happens if I flip a coin ten times and apply these criteria?

.. index:: power curve, power; coin flip

.. figure:: /plots/power-curve-10.*

Diese Grafik ist die Kurve einer eine Teststärken-Funktion. Auf der horizontalen Achse steht die verschiedenen Möglichkeiten für die wirkliche Wahrscheinlichkeit, mit der die Münze auf »Kopf« fällt - also wie fair oder unfair die Münze wirklich ist. Auf der vertikalen Achse steht die Wahrscheinlichkeit, mit der der ich aufgrund des errechneten p-Wertes beschließe, dass die Münze manipuliert ist.

.. This is called a *power curve.* Along the horizontal axis, we have the different
possibilities for the coin's true probability of getting heads, corresponding to
different levels of unfairness. On the vertical axis is the probability that I
will conclude the coin is rigged after ten tosses, based on the *p* value of the
result.

.. TODO: gibt es Teststärkenfunktionen?

Wenn die Münze tatsächlich manipuliert ist, und in 60% der Fälle »Kopf« zeigt, und ich die Münze 10 mal Werfe, gibt es nur eine 20% Wahrscheinlichkeit, dass ich beschließe, dass die Münze manipuliert ist. Bei zehn Würfen gibt es einfach zuwenig Daten um die Auswirkungen der Manipulation von zufälligen Schwankungen auseinanderzuhalten. Die Münze müsste fast immer nur auf eine bestimmte Seite fallen, damit ich die Manipulation immer bemerken würde.

.. TODO: wohl: dass ich Daten bekomme deren p-Wert so ist, dass ich korrekterweise beschieße, dass die Münze manipuliert ist.


.. You can see that if the coin is rigged to give heads 60% of the time, and I flip
the coin 10 times, I only have a 20% chance of concluding that it's
rigged. There's just too little data to separate rigging from random
variation. The coin would have to be incredibly biased for me to always notice.

Aber was ist, wenn ich die Münze 100 mal werfe?

.. But what if I flip the coin 100 times?

.. figure:: plots/power-curve-100.*

Oder 1000 mal?

.. Or 1,000 times?

.. figure:: plots/power-curve-1000.*

Mit 1000 Würfen kann ich ohne Probleme feststellen ob die Münze manipuliert ist um in 60% der Fälle »Kopf« zu zeigen oder nicht. Es ist einfach überaus unwahrscheinlich das eine faire Münze bei 1000 Würfen mehr als 600 mal »Kopf« zeigen würde.

.. With one thousand flips, I can easily tell if the coin is rigged to give heads
60% of the time. It's just overwhelmingly unlikely that I could flip a fair coin
1,000 times and get more than 600 heads.

.. _power-underpowered:

.. The power of being underpowered
-------------------------------

Die Stärke fehlender Teststärke
---------------------------------

Nachdem du all das gelesen hast könntest du denken, das solche Berechnungen eine grundlegende Anforderung für medizinische Tests wären. Ein Wissenschaftler könnte errechnen, wieviele Patienten nötig sind, um zu überprüfen, ob eine neue Medizin die Überlebensrate um mehr als 10% verbessert. Eine kurze Berechnung der Teststärke würde die Antwort geben. Wissenschaftler sind normalerweise zufrieden mit einer Teststärke von 0.8 oder mehr, das bedeutet, eine 80% Chance eine wirklichen Unterschied auch als einen solchen zu erkennen.

.. After hearing all this, you might think calculations of statistical power are
essential to medical trials. A scientist might want to know how many patients
are needed to test if a new medication improves survival by more than 10%, and a
quick calculation of statistical power would provide the answer. Scientists are
usually satisfied when the statistical power is 0.8 or higher, corresponding to
an 80% chance of concluding there's a real effect.

Aber wenige Wissenschaftler machen diese Berechnungen und nur wenige Publikationen erwähenen die Teststärke ihrer Tests.

.. However, few scientists ever perform this calculation, and few journal articles
ever mention the statistical power of their tests.

Stell sir einen Versuch vor, bei dem es zwei verschiedene Behandlungsmöglichkeiten für die selbe Krankheit gibt. Du willst wissen welche Medizin sicherer ist, aber leider sind Nebenwirkungen selten. Du kannst jede Medizin an ein paar hundert Menschen testen aber nur wenige in jeder Gruppe werden ernsthafte Nebenwirkungen erleiden.

.. Consider a trial testing two different treatments for the same condition. You
might want to know which medicine is safer, but unfortunately, side effects are
rare. You can test each medicine on a hundred patients, but only a few in each
group suffer serious side effects.

Natürlich hast du dann nicht besonders viel Daten um Nebenwirkungen zu vergleichen. Wenn vier Menschen der einen Grupp ernsthafte Nebenwirkungen hatten und drei in der anderen, kannst du nicht erkennen ob das an dem Medikament lag.

.. Obviously, you won't have terribly much data to compare side effect rates. If
four people have serious side effects in one group, and three in the other, you
can't tell if that's the medication's fault.

Unglücklicherweise schließen viele Versuche mit »Es gab keinen statistisch signifikanten Unterschied zwischen den Gruppen in Bezug auf unerwünschte Effekte« ohne anzumerken, dass, die Daten unzureichend waren um irgendetwas zu erkennen außer den größten Unterschieden \ :cite:p:`Tsang:2009iw. Das führt dazu, dass Ärzte denken, dass die Medikamente gleich sicher sind, obwohl eines viel gefährlicher als das andere ist.

.. TODO \ :cite:p:`Tsang:2009iw`

.. Unfortunately, many trials conclude with "There was no statistically significant
difference in adverse effects between groups" without noting that there was
insufficient data to detect any but the largest
differences.\ :cite:p:`Tsang:2009iw` And so doctors erroneously think the
medications are equally safe, when one could well be much more dangerous than
the other.

Vielleicht denkst du, dass das nur ein Problem ist, wenn ein Medikament nur einen schwachen Effekt hat. Leider nein: In einer Sichprobe von Studien, die zwischen 1975 und 1990 in renomierten  medizinischen Journals veröffentlicht wurden, ergaben 27% der `randomisierten kontrollierten Studien <http://de.wikipedia.org/wiki/Randomisierte_kontrollierte_Studie>`_
gegative Ergebnisse, aber 64% dieser Studien hatten nicht genug Daten  gesammelt, um 50% Unterschied zwischen den Gruppen im Experiment zu erkennen. Fünfzig Prozent! Sogar wenn eine Medizin die Symptome um 50% stärker verringert als die andere Medizin ist die Menge an Daten umzureichend um zu schlie0en das diese Effektiver ist. Und 84% der Studien mit negativen Ergebnissen hatten nicht genug Teststärke um einen Unterschied von 35% zu erkennen. \
:cite:p:`Moher:1994,Bedard:2007dy,Brown:1987uu,Chung:1998ku

.. TODO: What is "primary outcome"?
.. TODO: is »Studien mit negativen Ergebnissen« the right translation for "negative trails"
.. TODO: \
:cite:p:`Moher:1994,Bedard:2007dy,Brown:1987uu,Chung:1998ku`


.. You might think this is only a problem when the medication only has a weak
effect. But no: in one sample of studies published between 1975 and 1990 in
prestigious medical journals, 27% of randomized controlled trials gave negative
results, but 64% of these didn't collect enough data to detect a 50% difference
in *primary outcome* between treatment groups. Fifty percent! Even if one
medication decreases symptoms by 50% more than the other medication, there's
insufficient data to conclude it's more effective. And 84% of the negative
trials didn't have the power to detect a 25% difference.\
:cite:p:`Moher:1994,Bedard:2007dy,Brown:1987uu,Chung:1998ku`

In den Neurowissenschaften ist das Problem noch größer. Angenommen, wir sammeln die Daten, die in vielen neurowissenschaftlichen Veröffentlichungen zu einem bestimmten Effekt gesammelt wurden und errechen eine gute Abschätzung der Effektgröße. Die Studien haben Durchschnittlich (im Median) eine Chance von 20% den Effekt zu entdecken. Nur nachdem viele Studien zusammengenommen wurden, kann der Effekt erkannt werden. Ähnliche Probleme gibt es in neurowissenschaftlichen Studien, die Tiermodelle nutzen. Das wirft ethische Bedenken auf: Wenn die einzelnen Studien eine geringe Teststärke haben, wir der Effekt wahrscheinlich nur erkannt werden, nachdem viele Studien mit vielen Tieren durchgeführt und analysiert wurden. Dafür werden wesentlich mehr Tiere genutzt als bei der Durchführung einer einmaligen Studie mit ausreichender Teststärke. \ :cite:p:`Button:2013dz

.. TODO war :cite:p:`Button:2013dz`

.. TODO: strong estimate: gute Schätzung?

.. In neuroscience the problem is even worse. Suppose we aggregate the data
collected by numerous neuroscience papers investigating one particular effect
and arrive at a strong estimate of the effect's size. The median study has only
a 20% chance of being able to detect that effect. Only after many studies were
aggregated could the effect be discerned. Similar problems arise in neuroscience
studies using animal models -- which raises a significant ethical concern. If
each individual study is underpowered, the true effect will only likely be
discovered after many studies using many animals have been completed and
analyzed, using far more animal subjects than if the study had been done
properly the first time.\ :cite:p:`Button:2013dz`

That's not to say scientists are lying when they state they detected no
significant difference between groups. You're just misleading yourself when you
assume this means there is no *real* difference. There may be a difference, but
the study was too small to notice it.

Let's consider an example we see every day.

.. index:: right turn on red, power; right turn on red

.. _rtor:

The wrong turn on red
---------------------

In the 1970s, many parts of the United States began to allow drivers to turn
right at a red light. For many years prior, road designers and civil engineers
argued that allowing right turns on a red light would be a safety hazard,
causing many additional crashes and pedestrian deaths. But the 1973 oil crisis
and its fallout spurred politicians to consider allowing right turn on red to
save fuel wasted by commuters waiting at red lights.

Several studies were conducted to consider the safety impact of the change. For
example, a consultant for the Virginia Department of Highways and Transportation
conducted a before-and-after study of twenty intersections which began to allow
right turns on red. Before the change there were 308 accidents at the
intersections; after, there were 337 in a similar length of time. However, this
difference was not statistically significant, and so the consultant concluded
there was no safety impact.

Several subsequent studies had similar findings: small increases in the number
of crashes, but not enough data to conclude these increases were significant. As
one report concluded,

   There is no reason to suspect that pedestrian accidents involving RT
   operations (right turns) have increased after the adoption of [right turn on
   red]...

Based on this data, more cities and states began to allow right turns at red
lights. The problem, of course, is that these studies were underpowered. More
pedestrians were being run over and more cars were involved in collisions, but
nobody collected enough data to show this conclusively until several years
later, when studies arrived clearly showing the results: significant increases
in collisions and pedestrian accidents (sometimes up to 100% increases).\
:cite:p:`Hauer:2004fz,Preusser:1982gp` The misinterpretation of underpowered
studies cost lives.
