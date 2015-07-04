.. index:: p value; base rate fallacy



**************************************
p-Werte und Prävalenzfehler
**************************************

.. ***************************************
.. The *p* value and the base rate fallacy
.. ***************************************

Du hast schon gesehen, das *p*-Werte schwierig zu interpretieren sind. Ein statistisch nicht signifikanter Unterschied (der *p*-Wert ist also über ddeiner gewählten Signifikanzschwelle) bedeutet nicht, dass es keinen Unterschied gäbe. Aber wie sieht es aus, wenn ich tatsächlich  einen statistisch signifikanten Unterschied habe?

.. You've already seen that *p* values are hard to interpret. Getting a statistically insignificant result doesn't mean there's no difference. What about getting a significant result?

Probieren wir es am Beispiel aus. Stellt dir vor, ich teste einhundert mögliche Medikamente gegen Krebs. Nur zehn der Medikamente wirken, aber ich weiß nicht welche. Ich muss Experimente durchführen um herrauszufinden welche Medikamente wirken. In diesen Experimenten teste ich auf einen auf dem Niveau von :math:`p<0.05` signifikanten Vorteil gegenüber einem Placebo.

.. Let's try an example. Suppose I am testing a hundred potential cancermedications. Only ten of these drugs actually work, but I don't know which; I must perform experiments to find them. In these experiments, I'll look for :math:`p<0.05` gains over a placebo, demonstrating that the drug has  a significant benefit.

Zur Demonstration habe ich das Problem visualisiert: Jedes Quadrat in dem Gitter repräsentiert eine Substanz, die vielleicht ein hilfreicher Wirkstoff ist. Die Blauen Quadrate sind Substanzen, die tatsächlich als Wiorkstoff in einem Medikament funktionieren würden.

.. To illustrate, each square in this grid represents one drug. The blue squares are the drugs that work:

.. only:: html or text

   .. figure:: /plots/drug-grids-1.*

.. only:: latex

   .. figure:: /plots/drug-grids-1.*
      :scale: 50%

Wie wir gesehen haben können die meisten Versuche nicht jeden funktionierenden Wirkstoff erkennen. Wir werden annehmen, dass mein Test eine Teststärke von 0,8 hat. Von 10 funktionierenden Wirkstoffen werde ich durchschnittlich 8 korrekt erkennen. Diese sind in Violett dargestellt.

.. As we saw, most trials can't perfectly detect every good medication. We'll assume my tests have a statistical power of 0.8. Of the ten good drugs, I will correctly detect around eight of them, shown in purple:

.. only:: html or text

   .. figure:: /plots/drug-grids-2.*

.. only:: latex

   .. figure:: /plots/drug-grids-2.*
      :scale: 50%

Bei 90 Substanzen, die keine Wirkungen haben werde ich annehmen das 5 davon eine signifikante Wirkung haben. Warum? Erinnere dich dran das p-Werte unter der Annahme berrechnet werden, dass es keinen Effekt gibt, also :math:`p = 0.05`bedeutet, dass es eine fünfprozentige Wahrscheinlichkeit gibt, dass fälschlicherweise angenommen wird, dass eine unwirksamer wirkstoff wirkt.

.. Of the ninety ineffectual drugs, I will conclude that about 5 have significant effects. Why? Remember that *p* values are calculated under the assumption of no effect, so :math:`p = 0.05` means a 5% chance of falsely concluding that an ineffectual drug works.

Also führe ich meine Experimente durch und schließe, dass es 13 funktionierende Wirkstoffe gibt: 8 die wirklich funktionieren und 5 bei denen ich irrtümlich annehme das sie funktionieren. Diese sind in rot gezeigt:

.. So I perform my experiments and conclude there are 13 working drugs: 8 good drugs and 5 I've included erroneously, shown in red:

.. only:: html or text

   .. figure:: /plots/drug-grids-3.*

.. only:: latex

   .. figure:: /plots/drug-grids-3.*
      :scale: 50%

Die Wahrscheinlichkeit dass ein – laut der Auswertung – funktionierender Wirkstoff wirklich funktioniert ist nur 62%. Das heißt: Wenn ich aus all den 100 Wirkstoffen einen auswählt, diesen Teste und eine auf dem Niveau :math:`p < 0.05` statistisch signifikanten Unterschied finde besteht nur eine 62%-ige Chance, dass der Wirkstoff tatsächlich funktioniert. Der Anteil von statistisch signifikanten Resultaten die in Wirklichkeit fälschlicherweise als funktionierende Wirkstoffe klassifiziert werden, die »False Discovery Rate«, ist 38%.

.. The chance of any given "working" drug being truly effectual is only 62%. If I were to randomly select a drug out of the lot of 100, run it through my tests, and discover a :math:`p < 0.05` statistically significant benefit, there is only a 62% chance that the drug is actually effective. In statistical terms, my false discovery rate -- the fraction of statistically significant results which are really false positives -- is 38%.

Weil die Basisrate der funktionierenden Krebsmedikamente so niedrig ist – nur 10% von unseren hundert zu testenden Wirkstoffen funktionieren wirklich – gibt es viele Möglichkeiten, dass es fälschlich positive Testergebnisse gibt. Wenn ich unglücklicherweise eine Wagenladung nicht funktionierender Wirksoffe habe und alle teste, habe ich eine 0%-ige Chance, dass irgendein statistisch signifikantes Ergebnis wirklich zutrifft. Trotzdem werde ich ein :math:`p < 0.05` Ergebnis für 5% aller dieser unwirksamen Wirkstoffe in der Wagenladung haben.

.. Because the *base rate* of effective cancer drugs is so low -- only 10% of our hundred trial drugs actually work -- most of the tested drugs do not work, and we have many opportunities for false positives. If I had the bad fortune of possessing a truckload of completely ineffective medicines, giving a base rate of 0%, there is a 0% chance that any statistically significant result is true. Nevertheless, I will get a :math:`p < 0.05` result for 5% of the drugs in the truck.

.. index:: base rate fallacy

Oft zitieren Menschen p-Werte als ein Zeichen, dass ein Fehler unwahrscheinlich ist: »Es gibt nur eine Wahrscheinlichkeit von 1 zu 10.000 dass diese Ergebnis statistisch falsch ist«, sagen sie weil sie ein Ergebnis von :math:`p = 0.0001` haben. Falsch! Das ignoriert die Basisrate und nennt sich »Prävalenzfehler« oder »Basisratenfehlschluss«. Erinnere dich, wie p-werte definiert sind:

  Der p-Wert ist definiert als die Wahrscheinlichkeit, ein Ergebnis mindestens so extrem wie das gemessene zu messen, wenn es eigentlich garkeinen Effekt (= Unterschied) gibt (diese Annahme heißt »Nullhypothese«).

.. You often hear people quoting *p* values as a sign that error is unlikely. "There's only a 1 in 10,000 chance this result arose as a statistical fluke," they say, because they got :math:`p = 0.0001`. No! This ignores the base rate, and is called the *base rate fallacy*. Remember how *p* values are defined:

.. The P value is defined as the probability, under the assumption of no effect   or no difference (the null hypothesis), of obtaining a result equal to or more   extreme than what was actually observed.

Der p-Wert wird berechnet unter der Annahmen, dass der Wirkstoff *nicht wirkt* und sagt und sie Wahrscheinlichkeit unter dieser Annahme solche Werte wie wir zu bekommen oder extremere Werte. Der p-Wert sagt uns *nicht* wie groß die Wahrscheinlichkeit ist das der Wirkstoff tatsächlich funkioniert.

.. A *p* value is calculated under the assumption that the medication *does not work* and tells us the probability of obtaining the data we did, or data more extreme than it. It does *not* tell us the chance the medication is effective.

Erinnere dich daran, wenn menschen mit p-Werten begründen, dass sie wahrscheinlich Recht haben. die Irrtumswahrscheinlichkeit ihrer Untersuchung ist fast sicher höher. In Bereichen, in deinen die meisten getesteten Hypothesen falsch sind, wie z.B. in der Frühphase von Medikamentenversuchen (die wenigsten Wirkstoffe nehmen diese Hürde), ist es  wahrscheinlich, dass die *meisten* »statistisch signifikanten« Ergebnisse mit :math:`p < 0.05` in Wirklichkeit falsch sind.

.. When someone uses their *p* values to say they're probably right, remember this. Their study's probability of error is almost certainly much higher. In  fields where most tested hypotheses are false, like early drug trials (most early drugs don't make it through trials), it's likely that *most* "statistically significant" results with :math:`p < 0.05` are actually flukes.

.. One good example is medical diagnostic tests. ..ausgelassen wh. von oben

.. index:: base rate fallacy; mammograms, mammograms

.. The base rate fallacy in medical testing
.. ----------------------------------------


.. TODO: Geht es nicht die ganze Zeit um medizische Tests?

Der Basisratenfehlschluss in Medizinischen Tests
----------------------------------------------

Es gibt einigen Streit um die Nutzung von `Mammographie <https://de.wikipedia.org/wiki/Mammographie>`_. zur Brustgrebserkennung. Einige sagen, dass die Gefahr von falsch-positiven Ergebnissen (eine Person bekommt *fälschlicherweise* die Diagnose ›Brustkrebs‹) wie psychische Belastung, unnötige Biobsien, Operationen und Chemoterapie größer sind als der Nutzen einer früheren Krebserkennung. Das ist auch eine statistische Frage. Lass’ sie uns einschätzen.


.. There has been some controversy over the use of mammograms in screening breast cancer. Some argue that the dangers of false positive results, such as unnecessary biopsies, surgery and chemotherapy, outweigh the benefits of early cancer detection. This is a statistical question. Let's evaluate it.

Angenommen, 0.8% aller Frauen die einen Mammographie-Untersuchung machen, sind wirklich an Brustkrebs erkrankt. Bei 90% dieser Frauen wird der Test den Krebs auch wirklich erkennen. (Das ist die Teststärke des Testes. Es ist eine Schätzung, denn es ist schwer zu sagen, wieviele Erkrankungen *nicht erkannt* werden).

Von den Frauen, die in Wirklichkeit nicht an Brustkrebs erkrankt sind, werden 7% ein positives Testresultat bekommen. Das führt zu weiteren Tests und Biobsien. Wenn du ein ein positives Testergebnis bekommts – wie groß ist die Wahscheinlichkeit das du wirklich an Brustkrebs erkrankt bist?


.. NOTE: "if we don't know they're there." ausgelassen. Erhöhte Verständnis nicht.

.. Suppose 0.8% of women who get mammograms have breast cancer. In 90% of women with breast cancer, the mammogram will correctly detect it. (That's the statistical power of the test. This is an estimate, since it's hard to tell how many cancers are missed if we don't know they're there.) However, among women with no breast cancer at all, about 7% will get a positive reading on the mammogram, leading to further tests and biopsies and so on. If you get a  positive mammogram result, what are the chances you have breast cancer?

Wenn wir die Möglichkeit ignorieren, dass du, der Leserm männlich bist ,\ [#male]_ ist die Wahrscheinlickeit wirklich an Brustkrebs erkrankt zu sein, wenn du eine positive Diagnose (= Verdacht auf Brustkrebs) bekommts, **9%**. [Kramer:2005in]_

.. Ignoring the chance that you, the reader, are male,\ [#male]_ the answer is
9%.\ :cite:p:`Kramer:2005in`

Obwoh der Test nur für 7% der Frauen, die in Wirklichkeit nicht an Brustkrebs erkrankt sind, fälschlicherweise positive Ergebnisse hat – analog zum Testen auf ein Signifikanziveau von :math:`p < 0.07` sind 91% der positiven Testergebnisse *fälschlicherweise* positiv.

.. Despite the test only giving false positives for 7% of cancer-free women, analogous to testing for , 91% of positive tests are false positives.

Wie habe ich das berechnet? Mit der selben Methoden wie in dem Beispiel mit dem Wirkstoff gegen Krebs. Stell dir vor, es unter allen Frauen die eine Mammographie machen wollen 1000 Frauen zufällig ausgewählt. Acht von ihnen (0.8%) sind wirklich an Brustkrebs erkrankt. Die Mammographie findet 90% aller Fälle von wirklich existierendem Brustkrebs – ungefähr sieben von acht Frauen, die wirklich Brustkrebs haben, bekommen korrekterweise ein positives Testresultat. Das bedeutet im Umkehrschluss, dass eine wirklich Existierende Erkrankung bei einer Frau *nicht* erkannt wird.  Es gibt 992 Frauen, die in Wirklichkeit nicht an Brustkrebs erkrankt sind, und für 7% von ihnen bekommen wir fälschlicherweise ein positives Testergebnis. Das Resultat ist, dass 70 Frauen fälschlicherweise die Diagnose bekommen, an Brustkrebs erkrankt zu sein.

.. How did I calculate this? It's the same method as the cancer drug example. Imagine 1,000 randomly selected women who choose to get mammograms. Eight of them (0.8%) have breast cancer. The mammogram correctly detects 90% of breast cancer cases, so about seven of the eight women will have their cancer discovered. However, there are 992 women without breast cancer, and 7% will get a false positive reading on their mammograms, giving us 70 women incorrectly told they have cancer.

Insgesammt haben wir – in der Stichprobe von 1000 Frauen – 77 Frauen mit einem positiven Befund und 7 Frauen, die wirklich an Brustkrebs erkrankt sind. Nur 9% der Frauen, die einen positiven Befund bekommen,  haben tatsächlich Brustkrebs.

.. TODO: und eine Frau die An Brustkrebs erkrankt ist, aber KEINE positive Diagnose bekommen hat? -> Ja. TRUE POSITIVES-(TRUE POSITIVES*90%): 8-(8*0,9)=0.8, also etwas weniger als eine.

.. In total, we have 77 women with positive mammograms, 7 of whom actually have
breast cancer. Only 9% of women with positive mammograms have breast cancer.

Weenn du Fragen wie diese an Statistikstudenten und Lehrende für naturwissenschafltiche Methodik austeilst, fällt ein Drittel von Ihnen durch [Kramer:2005in]_. Wenn du Ärzte fragst, fallen zwei Drittel durch den Test [Bramwell:2006er]_. Sie schlussfolgern fälschlicherweise, dass ein Signifikanzniveau von :math:`p < 0.05` bedeutet, dass das Ergebnis eine 95%-Wahrscheinlichkeit hat wahr zu sein. Aber wie du an den Beispielen sehen kannst, hängt die Wahrscheinlichkeit, dass ein positives Testergebnis mit der Wirklichkeit übereinstimmt, davon ab wie groß der Anteil von Personen ist, auf die die Hypothese zutrifft. Und zum glück hat zu einem bestimmten Zeitpunkt nur ein kleiner Teil aller Frauen Brustkrebs.

.. If you administer questions like this one to statistics students and scientific methodology instructors, more than a third fail.\ :cite:p:`Kramer:2005in` If you ask doctors, two thirds fail.\ :cite:p:`Bramwell:2006er` They erroneously conclude that a :math:`p < 0.05` result implies a 95% chance that the result is true -- but as you can see in  these examples, the likelihood of a positive result being true depends on *what proportion of hypotheses tested are true*. And we are very fortunate that only a small proportion of women have breast cancer at any given time.

Schau dir Statistiklehrbücher für Einsteiger an: Du wirst oft den selben Fehler finden. *p*-Werte sind kontraintuitiv und Basisratenfehlschlüsse sind überall.

.. Examine introductory statistical textbooks and you will often find the same
error. *P* values are counterintuitive, and the base rate fallacy is everywhere.

.. index:: base rate fallacy; gun use

.. _base-rate-gun:

Greif’ zu den Waffen gegen den Basisratenfehlschluss
----------------------------------------------------

.. Taking up arms against the base rate fallacy
.. --------------------------------------------

Du must garnicht erst fortgeschrittene Krebsforschung oder Früherkennungsprogramme durchführen um auf den Basisratenfehlschluss zu stoßen. Wie wäre es mit Sozialforschung? Du könntest US-Amerikaner befragen um herrauszufinden wieoft diese ihre Handfeuerwaffen zur selbstverteidigung einsetzen. Der Streit um die Zugänglichkeit von Waffen fokussiert sich auf das recht zur Selbstverteidigung. Also ist es wichtig festzustellen ob Waffen üblicherweise zur Selbstverteidigung eingesetzt werden und ob das die Nachteile, wie z.B. Morde, aufwiegen kann.

.. You don't have to be performing advanced cancer research or early cancer screenings to run into the base rate fallacy. What if you're doing social research? You'd like to survey Americans to find out how often they use guns in self-defense. Gun control arguments, after all, center on the right to self-defense, so it's important to determine whether guns are commonly used for defense and whether that use outweighs the downsides, such as homicides.

Eine Möglichkeit, solche Daten zu sammeln, wäre eine Umfrage. Du könntest eine repräsentative Stichprobe von US-Amerikanern fragen, ob sie Waffen besitzen, und wenn ja, ob sie diese Waffen schon genutzt haben um ihr Zuhause bei Einbrüchen zu schützen oder sich selber bei einem Überfall zu verteidigen. Du könntest die Zahlen mit Statistiken der Polizei zur Nutzung von Schusswaffen bei Morden vergleichen und so eine bewusste Entscheidung darüber treffen ob die Vorteile die Nachteile überwiegen oder nicht.

.. One way to gather this data would be through a survey. You could ask a
representative sample of Americans whether they own guns and, if so, whether
they've used the guns to defend their homes in burglaries or defend themselves
from being mugged. You could compare these numbers to law enforcement statistics
of gun use in homicides and make an informed decision about whether the benefits
outweigh the downsides.

Solche Umfragen wurden schon durchgeführt – mit interessanten Resultaten. Auf Basis einer Telefonumfrage im Jahre 1992 wurde geschätzt das US-Amerikanische Bürger bis zu 2,5 Millionen mal pro Jahr  Waffen zur Selbstverteidigung nutzen. Das bedeutet, 1% aller US-Amerikanischen Erwachsenen haben sich mit Waffen verteidigt. 34% der Ereignisse waren Überfälle und das ergibt 845.000 Einbrüche, die von bewaffneten Bürgern verhindert wurden. Aber 1992 gab es ›nur‹ 1,3 Millionen Einbrüche während gleichzeitig jemand Zuhause war. Zwei Drittel davon geschahen als die Hausbesitzer schliefen und wurden erst entdeckt nachdem die Einbrecher schon weg waren. Übrig bleiben 430.000 Einbrüche bei denen die Hausbewohner anwesend *und* wach waren und den Einbrecher hätten stellen können. Von diesen 430.000 Einbrüchen wurden also 845.000 von bewaffneten Bürgern verhindert.

Ooops.

.. Such surveys have been done, with interesting results. One 1992 telephone survey estimated that American civilians use guns in self-defense up to 2.5 million  times every year -- that is, about 1% of American adults have defended  themselves with firearms. Now, 34% of these cases were in burglaries, giving us 845,000 burglaries stymied by gun owners. But in 1992, there were only 1.3 million burglaries committed while someone was at home. Two thirds of these occurred while the homeowners were asleep and were discovered only after the burglar had left. That leaves 430,000 burglaries involving homeowners who were at home and awake to confront the burglar -- 845,000 of which, we are led to believe, were stymied by gun-toting residents.\ :cite:p:`Hemenway:1997up`

.. Whoops.

Was ist da passiert? Warum hat die Umfrage den Gebrauch von Handfeuerwaffen zur Selbstverteidigung so überschätzt? Nun, aus dem selben grund wie die Mammographien das Auftreten von Brustkrebs überschätzen: Es gibt viel mehr Möglichkeiten für fälschlicherweise positive Ergebnisse (Daten sagen, die Waffe wurde gebraucht, obwohl es nicht wirklich so war) als für fälschlicherweise  negative Ergebnisse (Daten sagen, eine Waffe wurde nicht gebraucht, obwohl in Wirklichkeit eine Waffe gebraucht wurde).

.. What happened? Why did the survey overestimate the use of guns in self-defense? Well, for the same reason that mammograms overestimate the incidence of breast cancer: there are far more opportunities for  false positives than false negatives. If 99.9% of people have never used a gun in self-defense, but 1% of those people will answer "yes" to any question for fun, and 1% want to look manlier, and 1% misunderstand the question, then you'll end up *vastly* overestimating the use of guns in self-defense.

Wenn 99,9% der Menschen in Wirklichkeit niemals eine Waffe zur Selbsverteidigung genutzt haben, aber 1% aller Personen aus Spaß jede Fragen mit »Ja« beantworten, 1% möglichst »männlich« erscheinen will und 1% die Frage missverstehen, dann ist das Resultat eine *riesige* Pberschätzung der Nutzung von Waffen zur Selbstverteidigung.

Wie ist es mit falschen Negativergebnissen? Könnten der Effekt der falschen Positivergebnisse durch die Antworten durch die Personen wieder ausgeglichen werden, die Antworten: »Nein, ich habe nie eine Waffe zur Selbstverteidigung gebraucht« obwohl sie in Wirklichkeit erst kürzlich einen Einbrecher abgeknallt haben? Nein. Wenn eine Waffe zur Selbstverteidigung nur von sehr wenigen Personen genutzt wird, dann gibt es auch nur wenige Möglichkeiten, falsche Negativergebnisse zu bekommen. Die falschen Negativergebnisse gehen unter in der Masse der falschen Positivergebnisse.


.. What about false negatives? Could this effect be balanced by people who say "no" even though they gunned down a mugger last week? No. If very few people genuinely use a gun in self-defense, then there are very few opportunities for false negatives. They're overwhelmed by the false positives.

Das ist exakt wie in dem Beispiel mit der Krebsmedikation weiter oben. Hier ist *p* die Wahrscheinlichkeit das eine Person fälschlicherweise behauptet, dass sie eine Waffe zur selbstverteidigung genutzt haben. Auch wenn *p* klein ist wird die Antworte am Ende total falsch sein.

.. This is exactly analogous to the cancer drug example earlier. Here, *p* is the
probability that someone will falsely claim they've used a gun in
self-defense. Even if *p* is small, your final answer will be wildly wrong.

.. DIREKTE ÜBERSETZUNG: Um *p* zu senken haben Kriminologen detailierte Umfragen genutzt.

Um die Wahrscheinlichkeiten eines Irrtums zu senken, haben Kriminologen detailierte Umfragen genutzt. Die »National Crime Victimization«-Umfragen nutzen z.B. umfangreiche Interviews, die nicht nur im Vorübergehen geführt werden. Die Forscher fragen nach Details über die Verbrechen und die Nutzung von Waffen. Mit viel mehr Details in der Umfrage können die Forscher besser beurteilen, ob der Vorfall den Kriterien für Selbstverteidigung entspricht. Die Resultate sind kleiner. Umgefähr 65.000 Vorfälle pro Jahr – nicht mehrere Millionen. Es ist möglich, dass Teilnehmer Vorfälle nicht erwähnen, aber die Wahrscheinlichkeit für massivbe Überschätzung ist jetzt viel geringer.



.. TODO: das ist verwirren – p klein, totzdem doof. Jetzt: P senken bessere ergebnisse.

.. To lower *p*, criminologists make use of more detailed surveys. The National Crime Victimization surveys, for instance, use detailed sit-down interviews with  researchers where respondents are asked for details about crimes and their use of guns in self-defense. With far greater detail in the survey, researchers can better judge whether the incident meets their criteria for self-defense. The results are far smaller -- something like 65,000 incidents per year, not millions.  There's a chance that survey respondents underreport such incidents, but a much smaller chance of massive overestimation.

.. index:: multiple comparisons

.. _multiple-comparisons:

Wenn es nicht klappt: nochmal, nochmal, nochmap probieren.

..  If at first you don't succeed, try, try again
..---------------------------------------------

Der Basisratenfehlschluss zeigt und, dass falsche Positivergebnisse viel wahrscheinlicher sind, als du es bei einer Signifikanz von :math:`p < 0.05` erwarten würdest. Die meiste moderne Forschung macht nicht nur einen Signifikanztest. Moderne Studien vergleichen Auswirkungen einer Vielzahl von Faktoren um die zu finden die die signifikantesten Auswirkungen haben.

.. TODO: ist modern hier "aktuell", "modisch" oder einfach ironisch gemeint? Is modern here "current", "fashinonable" or used ironcially?

.. The base rate fallacy shows us that false positives are much more likely than you'd expect from a :math:`p < 0.05` criterion for significance. Most modern research doesn't make one significance test, however; modern studies compare the effects of a variety of factors, seeking to find those with the most significant effects.

Stelle die z.B. vor, du untersuchst ob Gummibärchen Pickel verursachen, indem du den Effekt jeder einzelnen Gummibärchenfarbe testest:



.. For example, imagine testing whether jelly beans cause acne by testing the
effect of every single jelly bean color on acne:

.. only:: html or text

   .. figure:: /img/xkcd-significant.png

      Cartoon from xkcd, by Randall Munroe. http://xkcd.com/882/

.. only:: latex

   .. figure:: /img/xkcd-significant-1.png

   .. figure:: /img/xkcd-significant-2.png

     Cartoon from xkcd, by Randall Munroe. http://xkcd.com/882/

Wie in dem Comic dargestellt, gibt es die mehrfache Möglichkeit falsche Positivresultate zu finden, wenn man mehrfach Daten vergleicht. Wenn ich, z.B. 20 Gummibärchensorten vergleiche, die bei niemandem Akne auslösen aber auf eine Korrelation von Gummibärchensorte auf einem Signifikanzniveau von :math:`p < 0,05` schauehabe ich eine Wahrscheinlichkeit von 64% auf ein falsch-positives Ergebnis [Smith:1987uz]_.

.. As you can see, making multiple comparisons means multiple chances for a false positive. For example, if I test 20 jelly bean flavors which do not cause acne at all, and look for a correlation at :math:`p < 0.05` significance, I have a 64% chance of a false positive result.\ :cite:p:`Smith:1987uz` If I test 45  materials, the chance of false positive is as high as 90%.

Es ist einfach, mehrfache vergleiche durchzuführen und es muss nicht so offensichtlich sein wie das Testen von 20 möglichen Wirkstoffen. Miss’ die Symptome von einem dutzend Patienten für ein dutzend  Wochen und teste auf signifikante Verbesserungen. Bums, das sind zwölf Vergleiche! Teste das Auftreten von dreiundzwanzig Nebenwirklungen. Leider sündigst du auch hier. verschicke eine zehnseitige Umfrage, in der du nach Nähe zu Atomkraftwerken, Milchkonsum, Alter, Anzahl männlicher Cousins, Lieblingspizzabelag, aktuelle Sockenfarbe und einge andere Faktoren fragst. Du wirst herrausfinden das *irgendetwas* scheinbar  mit  :math:`p < 0,05` Krebs verursacht. Wenn du nur genug Fragen fragst, ist es unausweichlich.

.. It's easy to make multiple comparisons, and it doesn't have to be as obvious as testing twenty potential medicines. Track the symptoms of a dozen patients for a dozen weeks and test for significant benefits during any of those weeks: bam, that's twelve comparisons. Check for the occurrence of twenty-three potential dangerous side effects: alas, you have sinned. Send out a ten-page survey asking about nuclear power plant proximity, milk consumption, age, number of male cousins, favorite pizza topping, current sock color, and a few dozen other factors for good measure, and you'll find that *something* causes cancer. Ask nough questions and it's inevitable.


Eine Umfrage zu Medizinischen Versuchen in dem 1980ern fand herraus das durchschnittlich 30 Vergleiche zu der Behandlung pro versuch gemacht wurden. In der Hälfte der Versuche wurden so viele Vergleiche gemacht, das es sehr wahrscheinlich war, falsche Positivresultate zu bekommen und die statistische Signifikanz der Resultate wurde in Zweifel gezogen: Zwar wurde ein statistisch signifikanter Effekt gefunden, aber dieser könnte genausogut ein falsches Positivresultat sein [Smith:1987uz]_.

.. A survey of medical trials in the 1980s found that the average trial made 30 therapeutic comparisons. In more than half of the trials, the researchers had made so many comparisons that a false positive was highly likely, and the statistically significant results they did report were cast into doubt: they may have found a statistically significant effect, but it could just have easily been a false positive [Smith:1987uz]_.

Es gibt Methoden, um das Risiko falsche Positivergebnisse zu bekommen zu reduzieren. Beispielsweise die Bonferroni-Korrektur: Wenn du :math:`n` Vergleiche in einem Versuch machst, sollte deine Schwelle für die Signifikanz  :math:`p < 0.05/n` sein. Das begrenzt die Wahrscheinlichkeit, für falsche Positivergebnisse in Versuchen mit mehrfachen Vergleichen auf die Wahrscheinlichkeit, die du hättest, wenn du nur einen Vergleich machst. Aber, wie du dir denken kannst, reduziert das auch die Teststärke denn du setzt eine viel stärkere Korrelation vorraus bevor du annimmst, dass die Korrelation statistisch signifikant ist. Es ist ein schwieriger Kompromiss, und tragischerweise wird nur in wenigen Veröffentlichungen überhaupt daraüber nachgedacht.

.. There exist techniques to correct for multiple comparisons. For example, the Bonferroni correction method says that if you make :math:`n` comparisons in the trial, your criterion for significance should be :math:`p < 0.05/n`. This lowers the chances of a false positive to what you'd see from making only one  comparison at :math:`p < 0.05`. However, as you can imagine, this reduces statistical power, since you're demanding much stronger correlations before you conclude they're statistically significant. It's a difficult tradeoff, and tragically few papers even consider it.

.. TODO: Versuchen mit mehrfachen Vergleichen auf die Wahrscheinlichkeit, die du hättest, wenn du nur einen Vergleich machst. STIMMT DAS?

.. index:: multiple comparisons; Atlantic salmon

.. _red-herrings:

Fischige Korrelationen in bildgebenden Verfahren
-------------------------------------------------

.. Red herrings in brain imaging
.. -----------------------------

Neurowissenschaftler vergleichen oft viele Zahlen. Die Führen fMRI-Studien durch, bei denen ein dreidimensionales Bild des Gehirns vor- und nach einer einer Aufgabe gemacht wird, die der Teilnehmer durchführt. Die Bilder zeigen den Blutfluss im Gehirn und zeigen so, welche Teile des Gehirn aktiv sind, wenn verschiedene Aufgaben durchgeführt werden.

.. Neuroscientists do massive numbers of comparisons regularly. They often performfMRI studies, where a three-dimensional image of the brain is taken before andafter the subject performs some task. The images show blood flow in the brain,revealing which parts of the brain are most active when a person performs in different tasks.

Aber wie erkennst du, welche Bereiche des Gehirns wärend einer Aufgabe aktiv sind? Eine einfache Methode ist das Gehirn in der Berechnung in keine Würfel aufzuteilen, die »Voxel« heißen (Voxel sind wie Pixel, aber eben dreidimensionale Würfel statt zweidimensionale Quadrate). Ein Voxel in dem »Davor« Bild wird mit dem Voxel in dem »Danach« Bild vergleichen. Wenn der Unterschied signifikant ist, kannst du schlussfolgern, dass der Teil des Gehirns an der Aufgabe beteiligt war. Das Problem ist, dass es tausende Voxel gibt die verglichen werden und viele Möglichkeiten so falsche positivergebnisse zu erzeugen.

.. But how do you decide which regions of the brain are active during the task? A simple method is to divide the brain image into small cubes called voxels. A voxel in the "before" image is compared to the voxel in the "after" image, and if the difference in blood flow is significant, you conclude that part of the  brain was involved in the task. Trouble is, there are thousands of voxels to compare and many opportunities for false positives.

Eine Studie testete z.B. die Auswirkungen von »ergebnisoffenen Mentalisierungsaufgaben«. Teilnehmern wurden »Eine Reihe von Fotos mit Menschen in sozialen Situationen mit einer bestimmten emotionalen Wertigkeit« gezeigt. Sie sollten »feststellen, welche Emotion das Individuum in dem Foto erlebt«. Du kannst dir vorstellen wir verschiedene Zentren für Emotionen und Logik wärend des Tests »Aufleuchten« würden.

.. One study, for instance, tested the effects of an "open-ended mentalizing task" on participants. Subjects were shown "a series of photographs depicting human individuals in social situations with a specified emotional  valence," and asked to "determine what emotion the individual in the photo must have been experiencing." You can imagine how various emotional and logical centers of the brain would light up during this test.

.. TODO: »ergebnisoffenen Mentalisierungsaufgaben« richtig übersetzt?

Die Datenanalyse zeigte das bestimmte Bereiche des Gehirns ihre Aktivität wärend der Aufgabe verändert haben. Ein Vergleich zwischen den Daten vor- und nach der Mentalisierungsaufgabe zeugte einen :math:`p = 0.001`- Unterschied in einem :math:`81 \text{mm}^3` Bereich des Gehirns.

.. The data was analyzed, and certain brain regions found to change activity during the task. Comparison of images made before and after the mentalizing task showed a :math:`p = 0.001` difference in a :math:`81 \text{mm}^3` cluster in the brain.

Die Testperson? Nicht ein Bachelorstudent, der $10 für seine Zeit bekam, wie sonst. Nein, der Teilnehmer war ein 3,8-Pfund Atlantik-Lachs, der »Nicht lebendig zur Zeit des Scans« war. [Bennett:2010uh]_.

.. The study participants? Not college undergraduates paid $10 for their time, as
is usual. No, the test subject was one 3.8-pound Atlantic salmon, which "was not
alive at the time of scanning."\ :cite:p:`Bennett:2010uh`

Natürlich sind die meisten neurowissenschaftlichen Studien ausgeklügelter als in dem Beispiel; Es gibt Methoden um Gruppierungen von Voxeln zu erkennen, die sich gemeinsam verändern und es gibt techniken um die Rate an falsch-positiven Ergebnissen zu kontrollieren, selbst wenn viele tausen Tests gemacht werden. Diese Methoden sind nun in der Neurowissenschaft weit verbreitet und wenige Veröffentlichungen machen einfache Fehler wie den in dem Beispiel beschreibenen. Umglücklicherweise geht fast jede Veröffentlichung anders mit dem Problem um; ein review von 241 fMRI-Studien fand herraus das 223 einzigartige Analysestrategien genutzt wurden. Das gibt den Forschenden, wie wir später besprechen werden, :ref:`große Flexibilität  <freedom>` um statistisch signifikante resultate zu erzielen. [Carp:2012ba]_.

.. Of course, most neuroscience studies are more sophisticated than this; there are methods of looking for  clusters of voxels which all change together, along with techniques for controlling the rate of false positives even when thousands of statistical tests are made. These methods are now widespread in the neuroscience literature, and few papers make such simple errors as I described. Unfortunately, almost every paper tackles the problem differently; a review of 241 fMRI studies found that they performed 223 unique analysis strategies, which, as we will discuss later, :ref:`gives the researchers great flexibility <freedom>` to achieve statistically significant results.\ :cite:p:`Carp:2012ba`

.. index:: multiple comparisons; false discovery rate, false discovery rate

.. _false-discovery:

Auf falsch-positive Ergebnisse kontrollieren

.. Controlling the false discovery rate
.. ------------------------------------

Schon zuvor habe ich erwähnt, das techniken exitistieren um für Mehrfachvergleiche zu korrigieren. Die Bonferroni-korrektur z.B. sagt das du die richtige Rate für falsch-positive Ergebnisse erreichst, indem du statt :math:`p < 0.05` das Signifikanniveau :math:`p < 0.05/n` nimmst – wobei :math:`n` die Anzahl der Vergleiche ist, die du machst. Wenn du einen Studie mit 20 Vergleichen durchführst nutzt du einen Signifikanzschwelle von :math:`p < 0.0025` um sicherzustellen das es nur eine 5%ige Wahrscheinlichkeit gibt das du fälschlicherweise einen nicht exisiterenden Unterschied für Statistisch signifikant hältst.

.. I mentioned earlier that techniques exist to correct for multiple comparisons. The Bonferroni procedure, for instance, says that you can get the right false positive rate by looking for :math:`p < 0.05/n`, where :math:`n` is the number of statistical tests you're performing. If you perform a study which makes twenty comparisons, you can use a threshold of :math:`p < 0.0025` to be assured that there is only a 5% chance you will falsely decide a  nonexistent effect is statistically significant.

Das hat Nachteile. Durch das senken der Signifikanzschwelle, bei der eine Ergebnis als statistisch signifikant betrachtet wird, verkleinert sich auch die Teststärke erheblich. Du kannst wirst viele fälschliche Effekte *und* wirkliche Effekte nicht feststellen. Es gibt fortgeschrittenere Prozeduren als die Bonferroni-Korrektur die bestimmte statistische Eigenschaften des Problems ausnutzen um die Teststärke zu erhöhnen, aber auch diese sind keine magischen Problemlösungen.

.. This has drawbacks. By lowering the *p* threshold required to declare a result statistically significant, you decrease your statistical power greatly, and fail to detect true effects as well as false ones. There are more sophisticated procedures than the Bonferroni correction which take advantage of certain statistical properties of the problem to improve the statistical power, but they are not magic solutions.

Schimmer noch, sie ersparen dir den Basisratenfehlschluss nicht. Du kannst immernoch von deiner Signifikanzschwelle fehlgeleitet werden und fälschlicherweise behaupten, dass es »nur eine 5%ige Wahrscheinlichkeit gibt, dass ich falsch liege«. Du hast einige der fälschlicherweise positiven Ergebnisse ausgeschlossen. Als ein wissenschafter bin ich interessierter an der »False Discovery Rate« interessiert: Welcher Anteil meiner statistisch signifikanten Ergebnisse sind falsch? Gibt es einen statistischen Test der diesen Anteil kontrolliert?

.. TODO: Schwierig: was ist der Unterschied zwischen false positive und false discovery rate?

.. Worse, they don't spare you from the base rate fallacy. You can still be misled by your *p* threshold and  falsely claim there's "only a 5% chance I'm wrong" -- you just eliminate some of the false positives. A scientist is more interested in the false discovery rate: what fraction of my statistically significant results are false positives? Is there a statistical test that will let me control this fraction?

Viele Jahre lang war die Antwort einfach »Nein«. Wie du in der Sektion zum Basisratenfehlschluss geshen hast können wir den Anteil falscher positivergebnisse Berechnen, wenn wir eine Annahme treffen wie viele der getesteten Hypothesen wirklich zutreffen. Aber wir sollten das besser mit unseren Daten herrausfinden, anstatt einfach zu raten.

.. For many years the answer was simply "no." As you saw in the section on the base rate fallacy, we can compute the false discovery rate if we make an assumption about how many of our tested hypotheses are true -- but we'd  rather find that out from the data, rather than guessing.

1995 gaben Benjamini und Hochberg eine Lösung für das Problem. Sie entwickelten eine außerordentlich einfache Prozedur, mit der du feststellen kannst, welch *p*-Werte du als statistisch signifikant betrachten solltest. Ich erspare dir die mathematischen Details, aber um zu illustrieren, wie einfach die Prozedur ist – hier ist sie:

1. Führe deine statistischen Tests durch und erreche einen *p*-Wert für jeden. Mache eine Liste und ordne sie aufsteigender Reihenfolge
2. Wähle eine False Discovery Rate und nenne sie »q«. Nenne die Anzahl der Tests »m«.
3. Finde den größten *p*-Wert sodass :math:`p \leq i q/m`, wobei *i* die Position des *p*-Wertes in der sortierten Liste von *p*-Werten ist.
4. Dieser p-Wert, und alle die kleiner sind, sind statistisch signifikant.

Fertig! Diese Prozedur garantiert, dass aus allen als statistisch signifikant befundenen nicht mehr als *q* Prozent falsche Positivergebnisse sind. [Benjamini:1995ws]_.


.. In 1995, Benjamini and Hochberg provided a better answer. They devised an exceptionally simple procedure which tells you which *p* values to consider statistically significant. I've been saving you from mathematical details so far, but to illustrate just how simple the procedure is, here it is:

.. 1. Perform your statistical tests and get the *p* value for each. Make a list    and sort it in ascending order.
.. 2. Choose a false-discovery rate and call it *q*. Call the number of statistical    tests *m*.
.. 3. Find the largest *p* value such that :math:`p \leq i q/m`, where *i* is the    *p* value's place in the sorted list.
.. 4. Call that *p* value and all smaller than it statistically significant.

.. You're done! The procedure guarantees that out of all statistically significant results, no more than *q* percent will be false positives.\ :cite:p:`Benjamini:1995ws`

Die Benjamini-Hochberg-Prozedur ist schnell und effektiv und wurde von vielen Statistikern und bestimmten Wissenschaftsgebietet genutzt. Sie ergibt üblicherwiese einen bessere Teststärke als die Bonferroni-Korrektur und ihre Freunde, und gibt zudem noch intuitivere Resultate. Die Benjamini-Hochberg-Prozedur kann in vielen verschiedenen Situationen angewendet werden und abwandlungen davon geben verbesserte Teststärke wenn bestimmte Arten von Daten getestet werden.

.. The Benjamini-Hochberg procedure is fast and effective, and it has been widely adopted by statisticians and scientists in certain fields. It usually provides better statistical power than the Bonferroni correction and friends while giving  more intuitive results. It can be applied in many different situations, and variations on the procedure provide better statistical power when testing certain kinds of data.

Natürlich ist die Prozedur nicht perfekt. In bestimmten seltsamen Situationen erzeugt die Prozedur unsinnige Ergebnisse und es wurde mathematisch bewiesen dann es immer möglich ist, sie bei  der Kontrolle der False-Dicovery-Rate zu übertreffen. Aber es ist ein Anfang und viel besser als nichts.

.. Of course, it's not perfect. In certain strange situations, the
Benjamini-Hochberg procedure gives silly results, and it has been mathematically
shown that it is always possible to beat it in controlling the false discovery
rate. But it's a start, and it's much better than nothing.


.. [#male] Interestingly, being male doesn't exclude you from getting breast
  cancer; it just makes it exceedingly unlikely.

.. [Kramer:2005in] Krämer, Walter, and Gerd Gigerenzer. "How to confuse with statistics or: The use and misuse of conditional probabilities." Statistical Science (2005): 223-230.

.. [Bramwell:2006er] Bramwell, Ros, Helen West, and Peter Salmon. "Health professionals' and service users' interpretation of screening test results: experimental study." BMJ 333.7562 (2006): 284.

.. [Smith:1987uz] Smith, David Gary, et al. "Impact of multiple comparisons in randomized clinical trials." The American journal of medicine 83.3 (1987): 545-550.

.. [Bennett:2010uh] Bennett, Craig M., M. B. Miller, and G. L. Wolford. "Neural correlates of interspecies perspective taking in the post-mortem Atlantic Salmon: An argument for multiple comparisons correction." Neuroimage 47.Suppl 1 (2009): S125.

.. [Carp:2012ba] Carp, Joshua. "The secret lives of experiments: methods reporting in the fMRI literature." Neuroimage 63.1 (2012): 289-300.

.. [Benjamini:1995ws] Benjamini, Yoav, and Yosef Hochberg. "Controlling the false discovery rate: a practical and powerful approach to multiple testing." Journal of the Royal Statistical Society. Series B (Methodological) (1995): 289-300.
