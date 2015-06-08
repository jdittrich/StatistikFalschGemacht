************
Einleitung
************
Im letzten Kapitel seines berühmten Buches *How to Lie with Statistics* (»Wie man mit Statistiken lügt«) sagt Darrell Huff uns, dass unser Vertrauen verdient, was »medizinisch erscheint« (*»anything smacking of the medical profession«*) oder von naturwissenschaftlichen Laboratorien und Universitäten stammt. Nicht unser uneingeschränktes Vertrauen, aber sicherlich mehr Vertrauen, als wir den Medien oder gewandten Politikern schenken würden. Immerhin hatte Huff ein ganzes Buch mit den irreführenden statistischen Tricks von Politik und Medien gefüllt. Aber wenige Menschen bemängeln die Statistiken, die ausgebildete, professionelle Wissenschaftler erstellen: Wissenschaftler suchen Einsicht, aber nicht Munition, die sie gegen politische Gegner einsetzen können.

.. In the final chapter of his famous book *How to Lie with Statistics*, Darrell
Huff tells us that "anything smacking of the medical profession" or published by
scientific laboratories and universities is worthy of our trust -- not
unconditional trust, but certainly more trust than we'd afford the media or
shifty politicians. After all, Huff filled an entire book with the misleading
statistical trickery used in politics and the media, but few people complain
about statistics done by trained professional scientists. Scientists seek
understanding, not ammunition to use against political opponents.


Statistische Datanalyse ist in der Wissenschaft fundamental. Öffne eine beliebige Seite in einer medizinischen Fachzeitschrift und du wirst mit Statistiken überschwämmt werden: *t*-Tests, *p*-Werte, »proportional hazards models«, »Risk Ratios«, logistische Regression, »least-square-fits« und Konfidenzintervalle. Statistiker haben Wissenschaftlern enorm mächtige Werkzeuge angeboten, um Ordnung und Bedeutung in den komplexesten Daten zu finden und die Wissenschaftler haben entzückt angenommen.

.. Statistical data analysis is fundamental to science. Open a random page in your
favorite medical journal and you'll be deluged with statistics: *t* tests, *p*
values, proportional hazards models, risk ratios, logistic regressions,
least-squares fits, and confidence intervals.  Statisticians have provided
scientists with tools of enormous power to find order and meaning in the most
complex of datasets, and scientists have embraced them with glee.

Nicht angenommen aber wurde die Statistik*ausbildung* und viele grundständige wissenschaftlichen Studiengänge haben gar keine statistische Ausbildung.

.. hmm, ist mir für deutschland nicht so bekannt…

.. They have not, however, embraced statistics *education*, and many undergraduate
programs in the sciences require no statistical training whatsoever.

Forscher haben seid den 80er Jahren eine Vielzahl von statistischen Trugschlüssen und Missverständnissen in populärer peer-reviewter wissenschaftlicher literatur aufgedeckt und haben herrausgefunden, dass viele wissenschaftliche Veröffentlichungen – vielleicht mehr als die Hälfte – solche Fehler enthalten: Inzureichende Teststärke (»Power«) macht, dass viele Studien nicht finden können, wonach sie suchen; mehrfach-Vergleiche und fehlinterpretierte *p*-Werte verursachen viele falsche Positivergebnisse (d.h. ein Unterschied wird gefunden, obwohl keiner besteht); »flexible« Datenanalyse macht es möglic, dort Zusammenhänge zu finden wo keine existieren. Das Problem ist nicht Betrug, sondern schlechte Statistikausbildung. So schlecht, dass manche Wissenschaftler zu dem Schluss kommen, dass die meisten Publizierten Resultate falsch sind.\ :cite:p:`Ioannidis:2005bw

.. TODO war: \ :cite:p:`Ioannidis:2005bw`

.. Since the 1980s, researchers have described numerous statistical fallacies and
misconceptions in the popular peer-reviewed scientific literature, and have
found that many scientific papers -- perhaps more than half -- fall prey to
these errors. Inadequate statistical power renders many studies incapable of
finding what they're looking for; multiple comparisons and misinterpreted *p*
values cause numerous false positives; flexible data analysis makes it easy to
find a correlation where none exists. The problem isn't fraud but poor
statistical education -- poor enough that some scientists conclude that most
published research findings are probably false.\ :cite:p:`Ioannidis:2005bw`

Es folgt eine Liste der entzetzlichsten statistischen Trugschlüsse die in der Wissenschft gemacht werden. Zum verständnis ist kein Wissen über statistische Methoden nötig, da viele Wissenschaftler keine formale Ausbildung darin haben. Und sei gewarnt: Sobald du über die Trugschlüssel bescheid weißt siehst du sie *überall*. Doch keine Panik. Das es solche Fehler gibt, ist kein Grund zu Aderlässen zurückzukehren – es ist ein Grund, die Wissenschaftlichen Methoden und Ausbildung zu verbesern.

.. Die letzten Beiden (alarmed, Isn’t excuse…) gehen nicht gut ineinander über

.. What follows is a list of the more egregious statistical fallacies regularly
committed in the name of science. It assumes no knowledge of statistical
methods, since many scientists receive no formal statistical training. And be
warned: once you learn the fallacies, you will see them *everywhere.* Don't be
alarmed. This isn't an excuse to reject all modern science and return to
bloodletting and leeches -- it's a call to improve the science we rely on.

.. _changelog:

Changes
-------

Erste Übersetzung ins Deutsche, Jan Dittrich.

Updated January 2013 with a relevant example of the base-rate fallacy:
:ref:`survey estimates of gun usage <base-rate-gun>`.

Updated April 2013 with more details on :ref:`the interaction of truth inflation
and early stopping rules <truth-inflation>`, :ref:`researcher freedom in
neuroscience <red-herrings>`, :ref:`poor statistical power in neuroscience
<power-underpowered>`, :ref:`how to control the false discovery rate
<false-discovery>`, :ref:`publication bias and poor reporting <hiding-data>`,
:ref:`underpowered studies and right turn on red <rtor>`, :ref:`the misuses of
confidence intervals <confidence-intervals>`, :ref:`the impact of all these
errors <wrought>`, :ref:`what can be done to save statistics <what-next>`, and
additional references and details in many other places.

.. _contact:

Contact
-------


Danksagung
----------------

Dank an  Dr. James Scott, dessen Statistikkurse mir das Hintergrundwissen gaben, um das hier zu schreiben;  Matthew Watson and CharonY die mir unschätzbares Feedback gaben und Vorschläge machten, als ich an den Entwürfen schrieb; meine Eltern, die mir Feedback gaben und Vorschläge machten; Dr. Brent Iverson, dessen seminar mich motivierte mich mitdem Missbrauch von Statistik zu beschäftigen und an alles die Wissenschaftler und Statistiker die die Regeln gebrochen haben und mir einen Grund gaben, dies zu schreiben.

Alle Fehler in den Erklärungen sind meine eigenen.


Urheberrecht
--------------

Dieses Werk ist under einer `Creative Commons Attribution 3.0 Unported License
<http://creativecommons.org/licenses/by/3.0/>`_ lizenziert. Du darfst es drucken, kopieren, übersetzen, umschreiben, eine  Begleitmusik komponieren, es verfilmen, oder irgendwas anders machen, solange du den Autor des Originals, Alex Reinhart und des Übersetzers, Jan Dittrich, nennst und einen Link zu dem Original (http://www.statisticsdonewrong.com/) mitgibst.

Der XKCD-Comic steht under einer `Creative Commons
Attribution-NonCommercial 2.5 License
<http://creativecommons.org/licenses/by-nc/2.5/>`_, und darf nicht kommerziell genutzt werden, außer es liegt eine Genehmigung des Künstlers vor `Mehr dazu. <http://xkcd.com/license.html>`_
Wenn du dieses Werk also kommerziell nutzt, musst du den Comic entfernen.

.. This work is licensed under a `Creative Commons Attribution 3.0 Unported License
<http://creativecommons.org/licenses/by/3.0/>`_. You're free to print it, copy
it, translate it, rewrite it, set it to music, slice it, dice it, or whatever,
so long as you attribute the original to me, Alex Reinhart, and provide a link
back to this site.

.. The xkcd cartoon used inside is available under the `Creative Commons
Attribution-NonCommercial 2.5 License
<http://creativecommons.org/licenses/by-nc/2.5/>`_, and may not be used
commercially without permission from the author. `More
details. <http://xkcd.com/license.html>`_
