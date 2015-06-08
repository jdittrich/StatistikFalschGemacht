Einführung in die Datenanalyse
==============================

.. An introduction to data analysis
 ================================

In experimentellen Wissenschaften läuft Forschung meist darauf hinaus, Veränderungen zu messen. Wirkt eine Medikament besser als ein anderes? Synthetisieren Zellen mit einer bestimmten Genvariante mehr Enzyme als andere Zellen? Entdeckt ein Algorithmus Pulsare besser als ein anderer? Beschleunigt eine Katalysator die Reaktion stärker als ein anderer?

.. Much of experimental science comes down to measuring changes. Does one medicine
work better than another? Do cells with one version of a gene synthesize more of
an enzyme than cells with another version? Does one kind of signal processing
algorithm detect pulsars better than another? Is one catalyst more effective at
speeding a chemical reaction than another?

Dadurch läuft bei Statistik viel darauf hinaus, Urteile über solche Unterschiede zu fällen. Wir reden über »Statistisch signifikante Unterschiede« weil Statistiker Möglichkeiten gefunden haben um festzustellen ob der Unterschied zwischen zwei Messungen groß genug ist um nicht einfach zufällig entstanden zu sein.

.. Much of statistics, then, comes down to making judgments about these kinds of
differences. We talk about "statistically significant differences" because
statisticians have devised ways of telling if the difference between two
measurements is really big enough to ascribe to anything but chance.

Stell dir vor, du testest zwei Medikamente gegen Erkältung. Deine *neue* Medizin verspricht die Dauer der Symptome um einen Tag zu verkürzen. Um das zu beweisen, suchst du zwanzig Patienten mit einer Erkältung. Die Hälfte der Patienten bekommt deine neue Medizin, die andere Hälfte bekommt ein Placebo. Du misst die Dauer der Symptome um die durchschnittliche Dauer der Erkältung mit und ohne deine Medizin zu finden.

.. Suppose you're testing cold medicines. Your new medicine promises to cut the
duration of cold symptoms by a day. To prove this, you find twenty patients with
colds and give half of them your new medicine and half a placebo. Then you track
the length of their colds and find out what the average cold length was with and
without the medicine.

Aber nicht alle Erkältungen sind gleich. Vielleicht dauert die durchschnittliche Erkältung eine Woche. Aber mit Glück dauert die Erkältung nur ein paar Tage oder aber mit Pech auch zwei lange Wochen, in denen der Patient all seine Taschentücher aufbrauchen wird. Es ist möglich, dass die Gruppe der Patienten die das Medikament bekamen, auch zufällig zu den unglücklichen Menschen gehören, die oft lange an Erkältungen leiden. Dann würdest du fälschlicherweise annehmen, dass die Medizin die Erkältung *verschlimmert*. Wie kannst du feststellen, ob du den Nachweis erbracht hast, dass die Medizin wirkt (oder nicht) und dass die Unterschiede nicht existieren, weil die Patienten zufällig unterschiedliche Krankheitsdauern haben?

.. But all colds aren’t identical. Perhaps the average cold lasts a week, but some
last only a few days, and others drag on for two weeks or more, straining the
household Kleenex supply. It's possible that the group of ten patients receiving
genuine medicine will be the unlucky types to get two-week colds, and so you'll
falsely conclude that the medicine makes things worse. How can you tell if
you've proven your medicine works, rather than just proving that some patients
are unlucky?

.. index:: ! p werte

.. _p-werte:

Die Macht der p-Werte
-----------------------

.. The power of *p* values
-----------------------

Eine Statistik kann uns die Antwort geben: Wenn wir die *Verteilung* der typischen Erkältungsdauern haben – wieviele Patienten ungefähr eine kurze, durchschnittliche oder lange Erkältung haben – können wir errechnen, wie wahrscheinlich es ist, dass eine zufällige Auswahl von Patienten (»Stichprobe«» oder »Sample«) im Durchschnitt länger, kürzer oder durchschnittlich lange erkältet sind. Indem wir einen statistischen Test durchführen können wir folgenden Frage beantworten: »Wenn meine Medizin total unwirksam wäre, wie groß wäre die Wahrscheinlichkeit, dass ich auf den Durchschnitt der Erkältungsdauer komme, den ich für meine Stichprobe errechnet habe?

.. Statistics provides the answer. If we know the *distribution* of typical cold
cases -- roughly how many patients tend to have short colds, or long colds, or
average colds -- we can tell how likely it is for a random sample of cold
patients to have cold lengths all shorter than average, or longer than average,
or exactly average. By performing a statistical test, we can answer the question
"If my medication were completely ineffective, what are the chances I'd see data
like what I saw?"

Das ist etwas kompliziert, lies es am besten nochmal.

.. That's a bit tricky, so read it again.

Aus dem Bauch herraus können wir uns vorstellen wie das funktioniert. Wenn ich die Medizin nur an mit einer Person teste ist es zu erwarten, dass die Person eine kürzere (oder längere) Erkältung hat als der Durchschnitt. Denn die Hälfte der einzelnen Patienten hat eine kürzere (oder längere) Erkältungsdauer als der Durchschnitt der gesammten Patienten. Wenn ich aber die Medizin mit zehn Millionen Patienten teste, ist es sehr unwahrscheinlich, dass *alle* Patienten eine kürzere Erkältung haben als der Durchschnitt und damit wahrscheinlich, dass die Unterschiede keinen zufälligen Grund haben, sondern an der Medizin liegen.

.. Intuitively, we can see how this might work. If I only test the medication on
one person, it's unsurprising if he has a shorter cold than average --
about half of patients have colds shorter than average. If I test the medication
on ten million patients, it's pretty damn unlikely that *all* of them will have
shorter colds than average, *unless my medication works.*

Die üblichen statistischen Test ergeben eine Nummer, den *p-Wert*, der beziffert wie Wahrscheinlich es ist, das ein Ergebnis zufällig entstanden ist. Der p-Wert ist so definiert:

.. The common statistical tests used by scientists produce a number called
the *p* value that quantifies this. Here's how it's defined:

  Der p-Wert ist definiert als die Wahrscheinlichkeit - unter der Annahme,
  dass keine Auswirkungen oder Unterschiede gibt - ein Ergebnis zu bekommen,
  das gleich oder extremer als das beobachtete. \:cite:p:`Goodman:1999tx

.. TODO war: \:cite:p:`Goodman:1999tx`

Wenn ich also meine Medizin 100 Patienten gebe und herrausfinde, dass die Erkältungen durchschnittlich einen Tag kürzer sind, dann ist der *p*-Wert die Wahrscheinlichkeit dafür, dass diese kürzere durchschnittliche Erkältungsdauer sich – unter der Annahme der  *Wirkungslosigkeit* der Medizin – durch zufällige Variation ergeben hat. Offenslichtlich sind ist der *p*-Wert von der Größe des Effektes abhängig (bei einer wirkungslossen Medizing ist eine zufällige Verkürzung der Krankheit um 4 Tage unwahrscheinlich; eine zufällige Verkürzung um nur 1 Tag schon wahrscheinlicher). Der *p*-Wert hängt auch von der Anzahl der Patienten ab, die an dem Test teilnehmen.

..  So if I give my medication to 100 patients and find that their colds are a day
shorter on average, the *p* value of this result is the chance that, if my
medication didn't do anything at all, my 100 patients would randomly have
day-shorter colds. Obviously, the *p* value depends on the size of the effect --
colds shorter by four days are less likely than colds shorter by one day -- and
the number of patients I test the medication on.

Der *p* Wert ist nicht leicht zu verstehen. Ein *p*-Wert ist nicht ein Maß dafür wie *richtig* deine Annahmen sind oder wie *relevant* der Unterschied zwischen denen Testgruppen ist. Es ist ein Maß dafür wie *Überrascht du sein solltest* wenn es eigentlich keinen Unterschied zwischen den Testgruppen gibt (weil z.B. die Medizin weirkungslos ist), obwohl die Daten einen Unterschied zwischen den Gruppen zeigen. Bei einem größerer Unterschied oder mehr Testteilnehmern wäre die Überraschung, wenn der Unterschied nur zufällig ist, größer und der *p*-Wert daher kleiner.

.. That's a tricky concept to wrap your head around. A *p* value is not a measure
of how right you are, or how significant the difference is; it's a measure
of *how surprised you should be* if there is no actual difference between the
groups, but you got data suggesting there is. A bigger difference, or one backed
up by more data, suggests more surprise and a smaller *p* value.


Es ist nicht einfach, das in eine »Ja« oder »Nein«-Antwort auf die Frage »gibt es wirklich eine Wirkung?« zu übersetzen. Die meisten Wissenschaftler folgen einer Faustregel: Wenn Wahrscheinlichkeit, dass die Daten sich so ergeben würden wenn die Medizin *nicht* wirken würde, 5% oder weniger ist (der *p*-Wert gleich oder kleiner 0,05 ist), dann wird der Unterschied zwischen der Wirkung von Medizin und Placebo als »signifikant« bezwichnet. Ist die Wahrscheinlichkeit größer als 5%, ist das Ergebnis »nicht signifikant«

.. It's not easy to translate that into an answer to the question "is there really
a difference?"  Most scientists use a simple rule of thumb: if *p* is less than
0.05, there's only a 5% chance of obtaining this data unless the medication
really works, so we will call the difference between medication and placebo
"significant."  If *p* is larger, we'll call the difference insignificant.

Die Aussage des *p*-Wertes ist begrenzt: Der *p*-Wert ist misst wie *überraschend* es wäre *keinen* begründeten Unterschied zu finden. Der *p*-Wert ist aber kein Maß der Größe des Unterschiedes (der »Effektgröße«). Ich kann einen kleinen (= signifikanten) *p*-Wert bekommen in dem ich einen riesigen Unterschied finde, wie »diese Medizin verlängert das Leben vierfach!« oder indem ich einen kleinen Effekt mit großer Sicherheit (z.B. vielen Testteilnehmern) bestimme. Statistische Signifikant bedeutet keine *praktische* Signifikant - trotz des Namens.

.. But there are limitations. The *p* value is a measure of surprise, not a measure
of the size of the effect. I can get a tiny *p* value by either measuring a huge
effect -- "this medicine makes people live four times longer" -- or by measuring
a tiny effect with great certainty. Statistical significance does not mean your
result has any *practical* significance.

Statistische *in*\ signifikanz ist ähnlich schwierig zu interpretieren. Ich könnte eine wirkungsvolle Medizin nutzen - aber wenn ich diese an nur zehn Patienten teste, wird es schwierig den Unterschied zwischen tatsächlicher Wirkung und schierem Glück herrauszufinden. Andersherum könnte ich die Medizin mit einigen tausend Patienten testen. Aber wenn die Medizin tatsächlich wirkt, aber die Erkältung dabei um nur drei Minuten verkürzt ist es trotzdem schwer den Unterschied zu erkennen. Ein statistisch nicht signifikanter Unterschied bedeutet nicht das es überhautpkeinen Unterschied gibt.

.. Similarly, statistical *in*\ significance is hard to interpret. I could have a
perfectly good medicine, but if I test it on ten people, I'd be hard-pressed to
tell the difference between a real improvement in the patients and plain good
luck. Alternately, I might test it on thousands of people, but the medication
only shortens colds by three minutes, and so I'm simply incapable of detecting
the difference. A statistically insignificant difference does not mean there is
no difference at all.

Es gibt keine mathematisches Werkzeug um festzustellen ob deine Hypothese wahr ist. Du kannst nur überprüfen ob die Hypothese mit deinen Daten übereinstimmt - und wenn du nur wenige oder unklare Daten hast, kann deine Schlussfolgerung unsicher sein.

.. There's no mathematical tool to tell you if your hypothesis is true; you can
only see whether it is consistent with the data, and if the data is sparse or
unclear, your conclusions are uncertain.

Aber davon dürfen wir uns nicht stoppen lassen.

.. But we can't let that stop us.
