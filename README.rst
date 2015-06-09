Statistik Falsch Gemacht
------------------------

In diesem Repository ist der `reStructuredText <http://docutils.sourceforge.net/docs/user/rst/quickref.html>`__ code für eine deutsche Übersetzung von `»Statistics Done Wrong« <http://www.statisticsdonewrong.com/index.html>`__ ein Buch über häufige Fehler und Missverständnisse in wissenschaftlicher Datenanalyse und Statistik.

Statistik falsch gemacht
========================

Der bedauerlicherweise komplette Ratgeber
------------------------------------------

*von* `Alex Reinhart <http://www.refsmmat.com>`__

Wenn du ein praktizierender Wissenschaflter bist, nutzt du vermutlich Statistische Auswertungen um deine Daten zu analysieren. Von grundlegenden t-Tests und der Berechnung von Standardabweichungen bis zu Cox-Regression und propensity score matching - wir nutzen Statistik um Antworten auf wissenschaftliche Probleme zu bekommen.

Das ist unglücklich, denn die meisten von uns haben keine Ahnung von Statistik.

*Statistik falsch gemacht* ist ein Ratgeber zu den populärsten statistischen Fehlern und Ausrutschern, die Wissenschaftlern tagtäglich passieren - im Labor und in peer-reviewten Journals. Viele dieser Fehler sind weit verbreitet und ziehen Erkentnisse vieler tausend Veröffentlichungen in Zweifel. *Statistik falsch gemacht* nimmt kein Vorwissen zu Statistik an - du kannst es vor deinem ersten Statistikkurs leden oder nach dreißig Jahren wissenschaftlicher Tätigkeit.

Inhalt
------

`Einleitung <introduction.rst>`_
`<data-analysis.rst>
`Teststärke <power.rst>`_
`Pseudoreplikation <pseudoreplication.rst>`_
`p-Werte <p-value.rst>`_
`Signifikante Unterschiede <significant-differences.rst>`_
`Regression <regression.rst>`_
`Freiheitsgrade <freedom.rst>`_
`Fehler <mistakes.rst>`_
`Verstecken <hiding.rst>`_
`Resultate <results.rst>`_
`Was kommt als nächstes? <what-next.rst>`_
`Schlusswort <conclusion.rst>`_



Beitragen
~~~~~~~~~

Der Orignaltext wird momentan einfach `auskommentiert <http://docutils.sourceforge.net/docs/user/rst/quickref.html#comments>`__ und die Übersetzung darüber eingefügt.

Fragen/Unsicherheiten bei der Übersetzung können im Bugtracker festgehalten werden oder mittels *.. TODO:* direkt in einem Kommentar im Text.





Statistics Done Wrong
---------------------

This repository contains the reStructuredText source code for `Statistics Done
Wrong <http://www.refsmmat.com/statistics/index.html>`__, a guide to the common
errors and misconceptions surrounding scientific data analysis and statistics.

*Statistics Done Wrong* is built using `Sphinx <http://sphinx-doc.org/>`__, a
documentation generator. You will need to install it if you wish to build the
site yourself. The included Makefile can build HTML and PDF versions of the
guide, and the scripts in the ``R/`` directory can be used to generate the plots
used in the text.

I use some extensions to Sphinx (in the ``extensions/`` directory) borrowed from
`Sphinxtr <https://github.com/jterrace/sphinxtr>`__, which provides modified
`sphinx-natbib <https://bitbucket.org/wnielson/sphinx-natbib>`__ which provides
LaTeX output. This means that you will need to run BibTeX in the
``_build/latex/`` directory after running ``make latexpdf``, then re-run
``pdflatex`` twice so the PDF version has appropriate citations.

This work is licensed under a `Creative Commons Attribution 3.0 Unported License
<http://creativecommons.org/licenses/by/3.0/deed.en_US>`__. All scripts and code
are available under the MIT license. See ``LICENSE`` for details.
