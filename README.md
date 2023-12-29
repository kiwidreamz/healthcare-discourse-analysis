### Université Bordeaux Montaigne - Master Études Anglophones - English Linguistics (3MIAM32)

### END-OF-TERM RESEARCH PROJECT

# Discourse Analysis – The Topic of Healthcare in the First Presidential Debate of 2020

Stephane Popov

Abstract

> Employing Foucauldian discourse analysis, I aimed to investigate the strategic discourse employed by presidential candidates Donald J. Trump and Joseph Biden in the first 2020 presidential debate, with a specific focus on the contentious topic of healthcare. The analysis reveals a dynamic interplay of power and resistance. Despite healthcare not being the initial subject, Biden effectively steers the conversation towards this crucial issue, capitalizing on its importance to the American public and to his obvious advantage. Trump, on the other hand, employs disruptive tactics to destabilize his opponent, challenging the discourse with disruptions, provocations and alternative truths, ultimately showing he is here to maintain the status quo. The moderator's role is also reviewed, highlighting the challenges of maintaining control and fairness to both candidates in such high-stakes debates. The candidates' language and assertions are scrutinized, showing their attempts to present their positions and ideologies. This study sheds light on the multifaceted nature of political discourse, emphasizing its impact on public opinion and the deepening of political divisions. It also points to the need for further research into discourse strategies in political communication to better understand their influence on shaping public perceptions and reinforcing party ideologies.

Keywords: discourse analysis, healthcare, politics

0. **Introduction**

Healthcare, a truly fundamental issue, remains a critical topic of contention and a never-ending debate in the United States. Total yearly healthcare expenditure was more than $4 trillion in 2021. On an individual basis, healthcare expenditure per capita in the US is 2.5 times the OECD average, and approximately double that of other countries renowned for both quality healthcare and universal coverage such as France or Canada. Nonetheless, everyday Americans still have tremendous problems accessing adequate healthcare and paying for it, due to prohibitively high costs. Medical bills are the number one source of personal bankruptcy filings for Americans, which is not surprising when looking at the price of hospital services, as some of the most common surgeries often carry price tags of more than $100,000. Even what one may consider basic items command seemingly overblown prices, a box of tissues will get charged 8 dollars, a single pair of simple non-sterile gloves will get charged no less than $53, totaling $434 daily, assuming the average 8.2 pairs are used per patient and per day. These prices may seem comical to non-Americans, but they are the everyday reality that the average US citizen has to live in. And while most Americans do have some form of health insurance, costs are unfortunately continuing to rise.

The political discourse around healthcare has therefore significant implications that affect millions of people, which is why I decided to do discourse analysis on how the two major candidates debated and defended their positions on healthcare in the first presidential debate of 2020. Both candidates, Donald Trump and Joseph Biden, strategically framed their positions, arguments and behaviors to appeal to different segments of the electorate. I hope this paper provides more insight into the strategies employed to persuade and mobilize voters, expecting them to reinforce broader ideological and party differences on the topic of healthcare policy, as republicans tend to favor market based solutions and less government oversight, while democrats generally support universal healthcare, emphasizing affordable access and more government involvement to help bring down costs.

1. **Literature Review**

Discourse analysis is basically the study of language in use. Lutpon’s 1992 paper does a great job at explaining discourse analysis when it comes to understanding the ideologies of health. She defines discourse as “a group of ideas or patterned way of thinking which can both be identified in textual and verbal communications and located in wider social structures”. Her paper mainly deals with the fact that ideological aspects are often overlooked and underutilized in public health research, and shows that discourse analysis can help uncover how language and communication, disseminated through the entertainment mass media, shape our understanding of health and power dynamics.

Put another way, discourse analysis infers that the language we use significantly impacts actual meaning through the way we perceive, view, experience and think about a specific topic, ourselves, others and the relationship between all of these actors, therefore viewing and studying language and its effect as a form of constantly evolving social practice. Two Frenchmen, Michel Foucault and Jacques Derrida are considered to be some of the most influential theorists on the subject of discourse, emphasizing the contextual nature of discourse, highlighting how power and knowledge are intertwined in shaping social reality, and demonstrating that meaning is inherently unstable and constantly shifting.

Yazdannik et al (2017) point to the two main dimensions of discourse analysis as textual and contextual. The linguistics type of discourse analysis focuses on micro elements of discourse and the actual content of words and sentences in a specific text, while the contextual form focuses on how said discourse is structured in context and social interaction. By looking closely at the first presidential debate of 2020, we can look at the topic of healthcare and its discourse from both methods, by analyzing the textual arguments of both candidates through the specific language they use, and by analyzing their social interaction through their behavior, with hope to see a strong influence by the political ideologies of the two parties at play.

2. **Methods**

I will be using the Foucauldian approach to discourse analysis, which is a method inspired by the ideas and theories of the French philosopher Michel Foucault. This approach is quite fitting for analyzing a political presidential debate as its focus on context and power relationships through language and behavior could help reflect how our inherently social world and our views of it are impacted by the messages and underlying assumptions of the two politicians at play. In a way, Foucauldian discourse analysis examines the strategies, tactics, and practices used in discourse to regulate and control certain behaviors, individuals, and ideas. Kendall and Wickham's 1999 book, _Using Foucault's Methods_ gives a great outline as to how to apply Foucault's method. They outline five steps in Foucault’s method. It starts by recognizing that discourse is a sequence of organized statements, analyzing how those statements are created, looking at what can be written or said and what can’t, outlining the manipulation of a conversation in order to introduce new statements, ending in the careful study of the dichotomy of a discourse, in terms of both the actual concrete and tangible point made and its represented frame and potential interpretation.

To help provide a comprehensive analysis of the 2020 presidential debate discourse, I will also aim to go beyond the qualitative insights of using Foucault's method to include quantitative aspects by leveraging advanced computational text analysis tools and methodologies, mainly the R programming language and two of its packages, sentimentr and tm. R is a widely used and highly versatile open-source programming language and environment for statistical computing and data analysis. The sentimentr package helps determine sentiment and has a unique capacity to account for valence sifters, such as negators, amplifiers, de-amplifiers, and adversative conjunctions within the context of English text (these linguistic nuances can substantially impact sentiment). tm (Text Mining) is a natural language processing R package providing functions and tools for working with text data. I used it mainly for text cleaning and preprocessing.

The text transcript from this debate was sourced from the Commission on Presidential Debates. The video of the debate was accessed from the non-profit public service C-SPAN (Cable-Satellite Public Affairs Network) YouTube channel. After loading the packages I was going to use, I split the transcript into segments based on speaker identification, created variables for each speaker and then extracted the separate sentences for each speaker with a for loop, appending them to the corresponding variable. I then ran Biden’s and Trump’s sentences through functions of the sentimentr package before creating a density plot. I then lowered all the characters to update capital letters, removed punctuation and stop-words, as well as the speaker identification names (Trump, Biden) for each set respectively in order to be able to get accurate word counts.

3. **Results**

The first interesting thing to note is that the topic of healthcare was not even the point of the first question asked by Chris Wallace. The subject of the first question was the Supreme Court, and at-the-time president Donald J. Trump’s nomination of Amy Coney Barrett, which former Vice-President Joseph Biden called an “abuse of power”. This is the first power dynamic we see in the discussion, it is interesting because by calling it an abuse, it is clearly inferred that the executive power is with the republicans at that time. This stance is further strengthened by Trump, as he says that they have the Senate and the White House. It shapes the conversation to come as it frames Trump as the person in power that has something to defend. Biden therefore has to be on the offensive, which he does by instantly taking control of the discussion. Justice Barrett’s stance on the Affordable Care Act (which she calls unconstitutional) is what led Biden to actually initiate the argument on healthcare, and for good reason. The democratic party is a strong proponent of universal coverage and access to cheap healthcare, and Biden has a lot to gain by moving the debate in that direction this early on in order to start on a good note.

Biden’s argument revolves around the fact that republicans are trying to get rid of the Affordable Care Act, which would change access to healthcare for less fortunate people, women and people with pre-existing conditions (which Biden claims there’s 100 million of). This is the gist of the argument for democrats. Healthcare would be more affordable and coverage would be universal if they had their way. This issue is as nonpartisan as it gets when it comes to public opinion, as a 2021 Gallup report found that 94% of Americans believe the cost of healthcare in the United States is “higher than it should be”.

This is where the debate truly starts, and where we can see the obvious defense vs attack dynamic. Trump’s entire argument, or lack thereof, forces him to be on the defensive. Defensive argumentation, also known as mitigation, aims to lower the impact of his opponent’s argument. These defensive arguments are generally weaker than offensive arguments, which here contain democrats’ carefully crafted ideas and plans, playing on the public’s will for change. Trump’s game plan is therefore simply to destabilize his opponent, not let him speak, and devalue his arguments.

Trump calls the 100 million figure totally wrong, and most importantly, claims that Biden will extinguish 180 million people’s private healthcare “that they’re very happy with”. Biden responds that it’s simply not true, and the debate enters what Wallace calls “open discussion”. Biden explains that they propose to expand and increase Obamacare, to which Trump re- instates the power structure, claiming that Biden is not in a position of power in his own party.

-   That's not what you've said and it's not what your party has said.
-   Your party doesn't say it. Your party wants to go socialist medicine.
-   And they're going to dominate you, Joe, you know that.

Here we see Biden’s first display of power.

-   I am the Democratic Party right now. The platform of the Democratic Party is what I, in fact, approved of.

Still in control of the conversation, Biden redirects it twice to new topics, first to Covid-19, the discussion on which is cut short as Wallace lets them know that that will be the topic of the next segment, and then to Roe v Wade. This is followed by an almost child-like argument, where Trump’s only tactic is negating the simple fact that abortion could be on the ballot in November, to which moderator Wallace has to step in to calm things down.

TRUMP: You don't know what's on the ballot. Why is it on the ballot?

BIDEN: Because -- because you've said --

TRUMP: Why is it on the ballot? It's not on the ballot.

BIDEN: It's on the ballot, in the court.

TRUMP: I don't think so.

BIDEN: In the court. Well --

TRUMP: There's nothing happening there.

BIDEN: Donald, would you just (inaudible) --

TRUMP: And you don't know her view on Roe v. Wade. You don't know her view.

BIDEN: I don't know --

WALLACE: Well, all right, let's -- all right. Let's talk -- I would -- we've got a lot to unpack

here, gentlemen. We got a lot of time. So -- On health care, and then we'll come back to Roe v. Wade.

Moderator Wallace then tries to ask a simple question, mainly inquiring what Trump’s healthcare plan is. He struggles to formulate this question as Trump, still in full defensive mode, interrupts him as many as 11 times, negating the fact that he has not come up with a comprehensive plan, to the point where the moderator has to remind him several times that he is merely asking him a question.

-   If I may ask that question, sir.
-   Well, I'll give you an –
-   When I finish, I'm going to give you an opportunity –
-   Sir, you're debating him, not me. Let me ask my question –
-   I'm the moderator of this debate and I would like you to let me ask my question and then you can answer your --

Trump then goes on to explain what he’s done to cut drug prices. This was done through a largely symbolic executive order, which was signed 5 days before the debate, raising questions as to the true intentions behind it. His usage of an analogy and quick short sentences aims to give the impression that he is stating universal truths, while not resisting to take a dig at Biden, as confrontation is his best bet at destabilizing his opponent and taking control of the conversation, which has so far been elusive to him.

-   Let me just tell you something, that there's nothing symbolic. I'm cutting drug prices.
-   Drug prices will be coming down 80 or 90%. You could have done it during your 47- year period in government, but you didn't do it. Nobody has done it. So we are cutting health care...
-   I am getting it for so cheap, it's like water, you want to know the truth. So cheap.

Moderator Wallace’s question to Biden then reflects republicans’ argument that his plan would end private insurance and create a government takeover of health care. Biden responds calmly and states his position and plan, mainly that private insurance would remain for those happy with their plans, and than they are focusing more on the people “so poor they qualify for Medicaid”, which is not the vast majority of the American people. This is where Trump returns to the charge and aims to take the discussion away from the positive impact Biden’s plan could have for less fortunate people, by bringing up the very polarizing figure that is Bernie Sanders and attempting a provocation by using the term “manifesto”, which is strongly associated with Karl Marx’s communist manifesto. Biden responded to that by pointing out that he beat Bernie Sanders in the primary, and that he is therefore irrelevant to the conversation at hand. This culminated in Trump using a racial slur, claiming Biden got very lucky, saying “If Pocahontas would’ve left two days early, you would’ve lost every primary” referring to Senator Elizabeth Warren, Biden’s Democratic opponent at the time.

Biden decides to call him out, pointing out that the public can see through his tactics.

-   Here's the deal. The fact is that everything he is saying so far is simply a lie. I'm not here to call out his lies. Everybody knows he's a liar.

Trump’s only response is somewhat comical. It refers to Joe Biden's class rank when he graduated from law school. He was 76th in a class of 85 and was therefore in the bottom 12% of his graduating class.

-   (You graduated) last in your class, not first in your class.

His constant interruption of Biden, preventing him to speak, to the point that the moderator had to intervene on several occasions, asking the president to “let him speak” and to “let him finish”, worked so well that Joe ended up sighing, stopping in his argumentation, and simply asking the crowd at home: “Folks, do you have any idea what this clown is doing”. One cannot argue the fact that Trump’s destabilizing attacks were incredibly successful at times. After a couple more points made going back and forth, Biden deals quite a fatal blow by explaining with surprising clarity and composure how ineffective President’s Trump tenure has been in terms of tackling healthcare issues:

-   He sends out wishful thinking. He has executive orders that have no power. He hasn't lowered drug costs for anybody. He has been promising a health care plan since he got elected. He has none. Like almost everything else he talks about. He does not have a plan. He doesn't have a plan.

Interestingly, moderator Wallace asks a final question, stating “we were talking originally about the Supreme Court here”, reminding us of Biden’s masterful influencing of the conversation towards a topic he knows he has an advantage over. However, this only gives Trump another opportunity to disrupt the discourse, agitate his opponent and quite successfully unsettle the debate into a chaotic childish argument.

TRUMP: He doesn't want to answer the question.

BIDEN: I'm not going to answer that question because... TRUMP: Why wouldn't you answer that question? BIDEN: The question is...

TRUMP: The radical left...

BIDEN: Would you shut up, man?

TRUMP: Who is on your list, Joe? Who's on your list?

BIDEN: this is so unpresidential.

TRUMP: He's not going to give a list.

WALLACE: We have ended this segment; we are going to go onto the second segment.

To give some quantitative data to support my analysis, I made a sentiment density plot as previously explained. This helps gauge sentiment on every sentence said by both candidates. Since they obviously went back and forth, replying to each other, it is to be expected that they have very similar figures, therefore even the slightest difference is of notice. As one can notice in the graph below, it does seem, when looking at the top of the curve, that Biden’s average sentiment is slightly higher than Trump’s. This can easily be explained by the fact that Biden’s sentences contained lots of statements of intent when it comes to his plan for healthcare, while the majority of Trump’s sentences were short, snappy and trying to attack and destabilize his opponent, translating to a lower average sentiment.

![Sentiment Density Plot - Trump vs Biden](https://i.imgur.com/Ok5Jopq.jpg)

To get a more detailed look, I made two separate word counts to look at the words most commonly used by the two candidates. Unsurprisingly, the top word for both candidates was “people”. However, the second word is quite telling. Biden’s is “I’m” (“im” with lowered capitals and removed punctuation), while Trump’s is “Joe”. This reinforces my point that Biden discussed his own plans as this is a topic he has the upper hand on, while Trump himself could only try to bring down his opponent, hence why he used his name so many times, without bringing any argument of his own when it comes to healthcare to the table. This is further shown through the use of words such as election, court, plan, vote, deal, democratic and medicaid by Biden and points to him urging the American people to vote and let their thoughts be known, as he is well aware of what the average American thinks about healthcare in terms of access and costs. Conversely, Trump’s repeated use of words such as obamacare, individual, mandate, rid, ballot, bernie and socialist show the disruptive nature of his speech, showing once again that he has no real argument and healthcare plan and that his only chance at keeping some form of power in this conversation is to bring up the controversial points of the Democratic party.

4. **Discussion**

This debate featured lots of control and resistance in the discourse. The mere fact that healthcare wasn’t the initial topic of the segment chosen by moderator Chris Wallace points to a very successful attempt from Biden to steer the conversation and discourse of the debate towards an issue he knows he has a tremendous advantage of, as the American people are clearly not happy with the state of healthcare in the United States. Trump managed to the best of his ability to resist this topic, trying everything he could in terms of disruption and provocation, not letting his opponent speak, not letting the moderator ask questions, dropping a racial slur, making fun of Biden’s graduation class rank, namedropping controversial left-wing personality Bernie Sanders and using words with a certain connotation such as “manifesto”. Biden himself also showed a sign of resistance, particularly by deflecting the last question, in which moderator Wallace asked him whether he would support either ending the filibuster or packing the court, which ultimately led to the end of the segment.

It is important to note that the moderator played an important role in shaping the discourse. Although his selection of the subject was subverted, he tried the best he could to accommodate both candidates, picking up on some of the democrats’ points when asking Trump questions, as well as reflecting republican’ ideas when questioning Biden. One could argue however, as many have following the debate, that he did not do enough to take control of the debate. The day before, Wallace said “My job is to be as invisible as possible.” Unfortunately, this meant he didn’t do what was necessary to prevent Trump to constantly disregard the agreed-upon ground rules, constantly refusing to allow Biden his two minutes to respond to questions. His bullying behavior had no real obvious precedent in presidential debate history. Wallace was blamed quite a bit for failing to keep the debate in check, Ana Navarro-Cardenas spoke for many viewers by stating "Chris Wallace has totally lost control of this thing. He’s allowing Trump to behave like a schoolyard bully, completely disrespecting the millions of Americans who tuned-in hoping to see a debate of ideas, and a plan to move America forward.”

Both candidates tried to assert some sort of expertise and present their knowledge of the topic, although neither seemed to be factual in their discourse, relying more on trying to affirm some form of alternative truth, seeking to somewhat justify their party’s positions and stay in line with their ideologies rather than make accurate points. When looking at it this way, Trump’s constant attempt to break down the discourse actually takes on a new dimension. The republican party defends the interests of conservative voters, which translates to a strong will to safeguard the existing conditions and state of affairs on almost every single facet of the political landscape, and healthcare is no exception to that. Preventing the mere discussion that could lead to somewhat of a change, is not in essence a consequence of Trump’s temper, character and complete disrespect of his opponent, it is a masterful, albeit not socially respectable way of positioning himself as an authoritative figure. While it may be seen as despicable in the landscape of political discourse, it is incredibly efficacious at representing himself as a staunch defender of the status quo and of the whole conservative ideology.

All that being said, it is crucial to note some important limitations. The debate transcript I used only captures one instance in time, and candidates' arguments and positions evolve over time. It is an extremely small sample size, a single segment of a single debate. A more comprehensive understanding could be achieved by analyzing a broader range of speeches, debates and statements. Secondly, interpretation may vary between researchers. My own personal subjectivity in analyzing both candidates' assertions and justifications could have impacted my findings, although I tried my very best to leave my biases aside. Moreover, this debate occurred in a specific context and understanding how situational factors influenced their statements is quite challenging. In terms of data collection, the accuracy of the transcript itself could be a limitation, potentially missing nuances present in spoken language, on top of the fact that I have noticed it contained some, albeit minor, errors in transcription.

5. **Conclusion**

In conclusion, I hope this analysis of the discourse in the first 2020 presidential debate between Donald Trump and Joseph Biden has unveiled intriguing dynamics. Biden's successful steer towards the healthcare issue, reflecting his awareness of public concerns, juxtaposed with Trump's disruptive and provocative tactics, exposed the intricacies of power and control in such high-stakes debates. The study emphasizes the significant role of the moderator in managing the discourse, albeit with some shortcomings, and highlights the candidates' attempts to present their positions through language, despite reliance on alternative truths and unconventional antics. This analysis underscores the multifaceted nature of political discourse, which extends beyond facts to the shaping of perceptions and the reinforcement of party ideologies. Future research could extend this analysis, examining a broader range of political communication to deepen our understanding of discourse strategies when it comes to healthcare, their impact on public opinion, and the role they play in reinforcing political divides.

**References**

Backman, Maurie. ‘This Is the No. 1 Reason Americans File for Bankruptcy’. _The Motley Fool_, [https://www.usatoday.com/story/money/personalfinance/2017/05/05/this-is-the-no-1-reason- americans-file-for-bankruptcy/101148136/](https://www.usatoday.com/story/money/personalfinance/2017/05/05/this-is-the-no-1-reason-americans-file-for-bankruptcy/101148136/).

Bazelon, Emily. ‘The Place of Women on the Court’. The New York Times, 7 July 2009. NYTimes.com, <https://www.nytimes.com/2009/07/12/magazine/12ginsburg-t.html>

Crary, David. ‘Ginsburg’s Death Puts Roe v. Wade on the Ballot in November’. Washington Post, 21 Sept. 2020. [https://www.washingtonpost.com/politics/courts_law/ginsburgs-death-puts-roe-v- wade-on-the-ballot-in-november/2020/09/21/2b31339e-fbc1-11ea-b0e4-350e4e60cc91_story.html](https://www.washingtonpost.com/politics/courts_law/ginsburgs-death-puts-roe-v-wade-on-the-ballot-in-november/2020/09/21/2b31339e-fbc1-11ea-b0e4-350e4e60cc91_story.html)

Department for Professional Employees. ‘The U.S. Health Care System: An International Perspective’. DPE, AFL-CIO, 15 Aug. 2016, [https://www.dpeaflcio.org/factsheets/the-us-health- care-system-an-international-perspective](https://www.dpeaflcio.org/factsheets/the-us-health-care-system-an-international-perspective)

Gallup & WestHealth. WestHealth-Gallup 2021 Healthcare In America Report. 2021, [https://s8637.pcdn.co/wp-content/uploads/2021/12/2021-Healthcare-In-America_West-Health- and-Gallup.pdf](https://s8637.pcdn.co/wp-content/uploads/2021/12/2021-Healthcare-In-America_West-Health-and-Gallup.pdf)

Gelman, Lauren. ‘10 Wildly Overinflated Hospital Costs You Didn’t Know About’. The Healthy, 2022, <https://www.thehealthy.com/healthcare/health-insurance/wildly-overinflated-hospital-costs/>

Grynbaum, Michael M. ‘Chris Wallace Struggled to Rein In an Unruly Trump at First Debate’. The New York Times, 30 Sept. 2020. NYTimes.com, <https://www.nytimes.com/2020/09/29/business/media/chris-wallace-debate.html>

Kendall, Gavin, and Gary Wickham. Using Foucault’s Methods. SAGE Publications, 1999.

Lupton, Deborah. ‘Discourse Analysis: A New Methodology for Understanding the Ideologies of Health and Illness’. Australian Journal of Public Health, vol. 16, no. 2, 1992, pp. 145–50. Wiley Online Library, <https://doi.org/10.1111/j.1753-6405.1992.tb00043.x>

Milliken, Maureen. ‘Hospital and Surgery Costs – Paying for Medical Treatment’. Debt.Org, <https://www.debt.org/medical/hospital-surgery-costs/>

Sriwimon, Lanchukorn, and Pattamawan Jimarkon Zilli. ‘Applying Critical Discourse Analysis as a Conceptual Framework for Investigating Gender Stereotypes in Political Media Discourse’. Kasetsart Journal of Social Sciences, vol. 38, no. 2, May 2017, pp. 136–42. ScienceDirect, <https://doi.org/10.1016/j.kjss.2016.04.004>

Strauss, Daniel. ‘Moderator Chris Wallace Criticized as Biden Drowned out by Trump in Debate’. The Guardian, 30 Sept. 2020. The Guardian, <https://www.theguardian.com/us-news/2020/sep/29/chris-wallace-debate-biden-trump-moderator>

The Commission on Presidential Debates. CPD: September 29, 2020 Debate Transcript. [https://www.debates.org/voter-education/debate-transcripts/september-29-2020-debate- transcript/](https://www.debates.org/voter-education/debate-transcripts/september-29-2020-debate-transcript/).

Van Dijk, Teun. Critical Discourse Analysis. 2015.

Waldrop & Rapfogel. ‘Too Little, Too Late: Trump’s Prescription Drug Executive Order Does Not Help Patients’. Center for American Progress, 15 Oct. 2020, [https://www.americanprogress.org/article/little-late-trumps-prescription-drug-executive-order-not- help-patients/](https://www.americanprogress.org/article/little-late-trumps-prescription-drug-executive-order-not-help-patients/)

Yazdannik, Ahmadreza, et al. ‘Discourse Analysis: A Useful Methodology for Health-Care System Researches’. Journal of Education and Health Promotion, vol. 6, Dec. 2017, p. 111. PubMed Central, <https://doi.org/10.4103/jehp.jehp_124_15>

**Appendix: R Code**
