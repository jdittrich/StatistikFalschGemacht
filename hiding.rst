.. index:: open data

.. _hiding-data:

***************
Hiding the data
***************

.. epigraph::

	"Given enough eyeballs, all bugs are shallow."

	-- Eric S. Raymond

We've talked about the :ref:`common mistakes <mistakes>` made by scientists, and
how the best way to spot them is a bit of outside scrutiny. Peer review provides
some of this scrutiny, but a peer reviewer doesn't have the time to extensively
re-analyze data and read code for typos -- reviewers can only check that the
methodology makes good sense. Sometimes they spot obvious errors, but subtle
problems are usually missed.\ :cite:p:`Schroter:2008hw`

This is why many journals and professional societies require researchers to make
their data available to other scientists on request. Full datasets are usually
too large to print in the pages of a journal, so authors report their results
and send the complete data to other scientists if they ask for a copy. Perhaps
they will find an error or a pattern the original scientists missed.

Or so it goes in theory. In 2005, Jelte Wicherts and colleagues at the
University of Amsterdam decided to analyze every recent article in several
prominent journals of the American Psychological Association to learn about
their statistical methods. They chose the APA partly because it requires authors
to agree to share their data with other psychologists seeking to verify their
claims.

Of the 249 studies they sought data for, they had only received data for 64 six
months later. Almost three quarters of study authors never sent their data.\
:cite:p:`Wicherts:2006jg`

Of course, scientists are busy people, and perhaps they simply didn't have the
time to compile their datasets, produce documents describing what each variable
means and how it was measured, and so on.

.. index:: p value; errors in calculation

Wicherts and his colleagues decided they'd test this. They trawled through all
the studies looking for common errors which could be spotted by reading the
paper, such as inconsistent statistical results, misuse of various statistical
tests, and ordinary typos. At least half of the papers had an error, usually
minor, but 15% reported at least one statistically significant result which was
only significant because of an error.

Next, they looked for a correlation between these errors and an unwillingness to
share data. There was a clear relationship. Authors who refused to share their
data were more likely to have committed an error in their paper, and their
statistical evidence tended to be weaker.\ :cite:p:`Wicherts:2011fp` Because
most authors refused to share their data, Wicherts could not dig for deeper
statistical errors, and many more may be lurking.

This is certainly not proof that authors hid their data out of fear their errors
may be uncovered, or even that the authors knew about the errors at
all. Correlation doesn't imply causation, but it does waggle its eyebrows
suggestively and gesture furtively while mouthing "look over there."  [#xkcd]_

.. _omit-details:

Just leave out the details
--------------------------

Nitpicking statisticians getting you down by pointing out flaws in your paper?
There's one clear solution: don't publish as much detail! They can't find the
errors if you don't say how you evaluated your data.

I don't mean to seriously suggest that evil scientists do this intentionally,
although perhaps some do. More frequently, details are left out because authors
simply forgot to include them, or because journal space limits force their
omission.

It's possible to evaluate studies to see what they left out. Scientists leading
medical trials are required to provide detailed study plans to ethical review
boards before starting a trial, so one group of researchers obtained a
collection of these plans from a review board. The plans specify which outcomes
the study will measure: for instance, a study might monitor various symptoms to
see if any are influenced by the treatment. The researchers then found the
published results of these studies and looked for how well these outcomes were
reported.

Roughly half of the outcomes never appeared in the scientific journal papers at
all. Many of these were statistically insignificant results which were swept
under the rug. [#rug]_ Another large chunk of results were not reported in
sufficient detail for scientists to use the results for further meta-analysis.\
:cite:p:`Chan:2004gm`

.. index:: stopping rules; omitted

Other reviews have found similar problems. A review of medical trials found that
most studies omit important methodological details, such as :ref:`stopping rules
<stopping-rules>` and :ref:`power calculations <power>`, with studies in small
specialist journals faring worse than those in large general medicine journals.\
:cite:p:`HuwilerMuntener:2002ij`

Medical journals have begun to combat this problem with standards for reporting
of results, such as the `CONSORT checklist
<http://www.consort-statement.org/>`_. Authors are required to follow the
checklist's requirements before submitting their studies, and editors check to
make sure all relevant details are included. The checklist seems to work;
studies published in journals which follow the guidelines tend to report more
essential detail, although not all of it.\ :cite:p:`Plint:2006uj` Unfortunately
the standards are inconsistently applied and studies often slip through with
missing details nonetheless.\ :cite:p:`Mills:2005ei` Journal editors will need
to make a greater effort to enforce reporting standards.

We see that published papers aren't faring very well. What about *unpublished*
studies?

Science in a filing cabinet
---------------------------

Earlier we saw the impact of :ref:`multiple comparisons <multiple-comparisons>`
and :ref:`truth inflation <truth-inflation>` on study results. These problems
arise when studies make numerous comparisons with low statistical power, giving
a high rate of false positives and inflated estimates of effect sizes, and they
appear everywhere in published research.

But not every study is published. We only ever see a fraction of medical
research, for instance, because few scientists bother publishing "We tried this
medicine and it didn't seem to work."

Consider an example: studies of the tumor suppressor protein TP53 and its effect
on head and neck cancer. A number of studies suggested that measurements of TP53
could be used to predict cancer mortality rates, since it serves to regulate
cell growth and development and hence must function correctly to prevent
cancer. When all 18 published studies on TP53 and cancer were analyzed together,
the result was a highly statistically significant correlation: TP53 could
clearly be measured to tell how likely a tumor is to kill you.

But then suppose we dig up *unpublished* results on TP53: data that had been
mentioned in other studies but not published or analyzed. Add this data to the
mix and the statistically significant effect vanishes.\ :cite:p:`Kyzas:2005ep`
After all, few authors bothered to publish data showing no correlation, so the
meta-analysis could only use a biased sample.

A similar study looked at reboxetine, an antidepressant sold by Pfizer. Several
published studies have suggested that it is effective compared to placebo,
leading several European countries to approve it for prescription to depressed
patients. The German Institute for Quality and Efficiency in Health Care,
responsible for assessing medical treatments, managed to get unpublished trial
data from Pfizer -- three times more data than had ever been published -- and
carefully analyzed it. The result: reboxetine is not effective. Pfizer had only
convinced the public that it's effective by neglecting to mention the studies
proving it isn't.\ :cite:p:`Eyding:2010bx`

This problem is commonly known as publication bias or the file-drawer problem:
many studies sit in a file drawer for years, never published, despite the
valuable data they could contribute.

The problem isn't simply the bias on published results. Unpublished studies lead
to a duplication of effort -- if other scientists don't know you've done a
study, they may well do it again, wasting money and effort.

Regulators and scientific journals have attempted to halt this problem. The Food
and Drug Administration requires certain kinds of clinical trials to be
registered through their website ClinicalTrials.gov before the trials begin, and
requires the publication of results within a year of the end of the
trial. Similarly, the International Committee of Medical Journal Editors
announced in 2005 that they would not publish studies which had not been
pre-registered.

Unfortunately, a review of 738 registered clinical trials found that only 22%
met the legal requirement to publish.\ :cite:p:`Prayle:2011cs` The FDA has not
fined any drug companies for noncompliance, and journals have not consistently
enforced the requirement to register trials. Most studies simply vanish.

.. [#xkcd]
   Joke shamelessly stolen from the alternate text of http://xkcd.com/552/.

.. [#rug]
   Why do we always say "swept under the rug"? Whose rug is it? And why don't
   they use a vacuum cleaner instead of a broom?
