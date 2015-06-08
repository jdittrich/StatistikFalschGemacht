.. index:: vibration of effects, researcher freedom

.. _freedom:

************************************
Researcher freedom: good vibrations?
************************************

There's a common misconception that statistics is boring and monotonous. Collect
lots of data, plug the numbers into Excel or SPSS or R, and beat the software
with a stick until it produces some colorful charts and graphs. Done! All the
statistician must do is read off the results.

But one must choose *which* commands to use. Two researchers attempting to
answer the same question may perform different statistical analyses entirely.
There are many decisions to make:

1. Which variables do I adjust for? In a medical trial, for instance,
   you might control for patient age, gender, weight, BMI, previous
   medical history, smoking, drug use, or for the results of medical
   tests done before the start of the study. Which of these factors are
   important, and which can be ignored?

2. Which cases do I exclude? If I'm testing diet plans, maybe I want to
   exclude test subjects who came down with uncontrollable diarrhea
   during the trial, since their results will be abnormal.

3. What do I do with outliers? There will always be some results which
   are out of the ordinary, for reasons known or unknown, and I may want
   to exclude them or analyze them specially. Which cases count as
   outliers, and what do I do with them?

4. How do I define groups? For example, I may want to split patients
   into "overweight", "normal", and "underweight" groups. Where do I
   draw the lines? What do I do with a muscular bodybuilder whose BMI is
   in the "overweight" range?

5. What about missing data? Perhaps I'm testing cancer remission rates
   with a new drug. I run the trial for five years, but some patients
   will have tumors reappear after six years, or eight years. My data
   does not include their recurrence. How do I account for this when
   measuring the effectiveness of the drug?

6. How much data should I collect? Should I stop when I have a
   definitive result, or continue as planned until I've collected all
   the data?

7. How do I measure my outcomes? A medication could be evaluated with
   subjective patient surveys, medical test results, prevalence of a
   certain symptom, or measures such as duration of illness.

Producing results can take hours of exploration and analysis to see
which procedures are most appropriate. Papers usually explain the
statistical analysis performed, but don't always explain why the
researchers chose one method over another, or explain what the results
would be had the researchers chosen a different method. Researchers are
free to choose whatever methods they feel appropriate -- and while they
may make the right choices, what would happen if they analyzed the data
differently?

In simulations, it's possible to get effect sizes different by a factor of two
simply by adjusting for different variables, excluding different sets of cases,
and handling outliers differently.\ :cite:p:`Ioannidis:2008dy` The effect size
is that all-important number which tells you how much of a difference your
medication makes. So apparently, being free to analyze how you want gives you
enormous control over your results!

The most concerning consequence of this statistical freedom is that researchers
may choose the statistical analysis most favorable to them, arbitrarily
producing statistically significant results by playing with the data until
something emerges. Simulation suggests that false positive rates can jump to
over 50% for a given dataset just by letting researchers try different
statistical analyses until one works.\ :cite:p:`Simmons:2011iw`

Medical researchers have devised ways of preventing this. Researchers are often
required to draft a :index:`clinical trial protocol`, explaining how the data
will be collected and analyzed. Since the protocol is drafted before the
researchers see any data, they can't possibly craft their analysis to be most
favorable to them.  Unfortunately, many studies depart from their protocols and
perform different analysis, allowing for researcher bias to creep in.\
:cite:p:`Chan:2008bb,Chan:2004gm` Many other scientific fields have no protocol
publication requirement at all.

The proliferation of statistical techniques has given us many useful tools, but
it seems they have been put to use as blunt objects. One must simply beat the
data until it confesses.
