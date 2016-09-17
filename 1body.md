# Introduction

With the expansion of the Internet of Things (IoT) an embedded system is connected to a network and should interact with other systems to provide services. Furthermore, a major component of the value of embedded system moves to software from hardware. On the other hand, some embedded systems have been used for longer than expected. In such situations, the causes of troubles are changing. For instance, there are troubles from compound factors related to the interaction between systems, from software instead of hardware, and from system aging related to long-term maintenance. Developers should take care of such new types of problems. We, however, are losing the knowledge of how to prevent problems in software systems because of derivational software development in that developers develop software that relates to “delta” and do not take care of rest of the software. 

Therefore, we, Information-technology Promotion Agency, Japan, started an activity to share knowledge so as to develop reliable software that prevents software-related problems, a process, real cases from Japanese industries, and an educational course to teach the process and cases. 

In this paper, we describe the educational course so that developers can get skills to become aware of the smells of problems, learn how to cope with troubles and prevent recurring problems, and learn how to make generalized knowledge that we can use for another kind of product or technology from cases from the real field. 

The rest of the paper are organized as follows: In section 2, we introduce some literature. In section 3, we describe a design of our proposed course, and section 4 shows some results of the course. Section 5 introduces one of the cases we employed in our course. We will conclude this in section 6.

# Related Works

## Hazard Prediction Training (KYT)

Hazard prediction training (Kien Yochi Training in Japanese; KYT) is a quite common training method among Japanese manufacturing industries @kaizenweb2016kyt. In the training, trainees consider what kind of hazards may occur in their field. They then analyze the root causes of the hazards, create prevention plans for the root causes, and set goals to prevent the hazard from occurring. The KYT is also conducted in other domains, such as transportation, medicine, *etc*.

The KYT method is quite a useful framework for training hazard prevention and the creation of prevention plans. However, the training is not for software, and such kind of training is difficult when conducted beyond the company because there is no case that we can use beyond the company or product domains. Therefore, we make software-centric cases for this kind of training.

## Recurring Prevention

JIS Q 9024:2003 @jisq90242003 defines *recurring prevention* that removes the root causes of the problems or effects from the root causes to prevent the same kind of problems from recurring.

In our course, we define *recurring prevention* by identifying root causes of defects or faults of a product or system and taking effective measures to prevent problems of the same kind, or problems in the product or the system, from recurring.

## Generic Prevention Plan

We define *generic prevention plan* as a generalized recurring prevention plan for other kinds of products or system that prevents the same kinds of defects or faults. It is the kind of preventative action of the ISO 9000 @iso90002000quality.

## Root Causes Analysis

There is much literature that describes how to deal with defects and causal analysis @mays1990experiences, @card1998learning, @kwak2004project. In our activity, we introduce such kinds of knowledge to trainees.


# The Course Design

The section describes the course design of our proposed course. 

## Requirements

First of all, we define the requirements of our course. We identify four requirements in order for students to learn  lessons from problems that have occurred in the real field as follows:

1. Get an awareness as to the smells of problems: If engineers can notice seeds of problems, we can prevent the problems in advance. We believe that increasing awareness as to the smells of problems is quite important.
2. Learn a process to cope with problems: When problems occur, engineers should deal with the problems appropriately so as to solve them and to prevent the same kinds of problems from happening again. Engineers should learn the process.
3. Learn to identify root causes of problems: When problems occur, engineers should figure out their root causes so as to prevent reoccurring problems in a similar kind of project.
4. How to obtain general knowledge from problems: Acquiring general and reusable knowledge from real problems it is quite useful for other projects or domains. A prevention plan for the same type of project is relatively easy, but it is difficult to acquire general knowledge from the real problem.

## Overview

Here, an overview of our course is described.

This course employs *cases* to teach the items identified below. Lectures are important, but they are not enough to obtain the needed skills. As much as possible, practice using cases that are true to life is needed. Some industries tell us cases based on the real problems in their field. We rewrite the cases to make them anonymous and add information to make them useful for our course. We divide the case into two parts: a part that describes the background of the problem, and a latter part that explains what happens after finding the problem. We disclose the case to the trainees gradually. We will explain one of the cases in Section 5. 

Table 1 shows the timetable of our course.

\input{timetable}

## Lecture and Team Building

First, through a lecture, the trainees learn why should we learn from problems and how we should deal with the problems. 

Before the course, we give trainees an assignment to read and understand a previous part of the case, which describes the background and situation in which a problem occurs.

The trainees form teams comprising four or five members and share and discuss their opinions about the case. After that, lecturers explain the former case in detail to promote ideas about the case.

## Identifying Root Causes

The next phase is root cause analysis. We explain how to analyze root causes. After that, trainees analyze root causes in the teams formed below and share the result of the analysis beyond the team.

- Lecture root causes analysis
- Practice with simple case
- Explain a framework that describes three aspects of causes:
	1. Why and when did we make the defect? 
	2. Why did not we find the trouble before shipping? 
	3. Why did the impact become so significant?
- Practice identifying root causes of a case
- Discuss the root causes

Here, the small case used in this step is described as follows:

> A case of certain commercial company.

> Mr.Suzuki, the person in charge of delivery, was verbally asked by his boss to deliver 20 pieces of blue product A immediately. He cannot do it immediately because he has another task, so he gave a half-hearted reply of “okey” and did it afterwards.

> Tomorrow, Yamakawa shop, which ordered the products, complained over the telephone that “50 pieces of red product A were delivered!” Ms. Watanabe, who is a part-timer, received the call. However, she went home without telling the other staff, member about this because there was no staff on the team and the time was approaching for her to pick up her children.

> Mr.Suzuki should deliver 20 pieces of blue product A, but he delivered 50 pieces of red product A.

> The president of Yamakawa shop protested severely. 

## Creating Recurrent Problems Prevention Plans

After identifying the root causes, the trainees establish recurrent problems prevention plans as follows:

- Consider the prevention plans for each cause found at the previous step
- Identify activities preventing recurrent problems for each prevention plan in a software process

@fig:rootcause shows an example of the result of the root cause analysis and creating recurrent problems prevention plans.

![An Example of the Result of the Root Cause Analysis](image/resultofrca.pdf){#fig:rootcause}


## Building General Lessons Learned

Finally, we discuss a generalization of the case to use the knowledge in other projects or product domains.

- Examine all prevention plans derived in the previous step in terms of usefulness, similarity, portability, and frequency.
- Consider generalized prevention plan for another product or project.

@fig:generalizecase shows the concept of the generalization of cases. A  case has own context such as underlying technologies, a development process, *etc*. We think the generalization of a case is that make the case independent the context and can be used in another context like project, product domain. 

![Concept of Generalizing Cases](image/generalizecase.pdf){#fig:generalizecase}

We develop a worksheet that facilitates the generalization of a case according to this concept(@fig:worksheet). In the worksheet, trainees firstly select a prevention plan identified the previous step and copy it to the top of the sheet. Next, they extract generalized knowledge in terms of both of product or technology, and management. In the step, trainees consider the generalization of a case. In the third, they think how we can get aware of the problems to the team members of engineers, and managers. Finally, write the generalized knowledge for their team or teams the next yours according to the sheet. 

![The Worksheet for Generalizing Cases](image/worksheet.pdf){#fig:worksheet}


# Evaluation

## A Trial Course

We conducted an experimental course according to the plan mentioned below. We did a half-day course in Nagoya, Japan, and 21 trainees joined the course. All of the trainees belong to industries in the area. 

## Results of Questionnaire

We made a questionnaire to evaluate our proposed course as follows:

- Do you understand the lecture? (@fig:understand)
- Have you acquired the skills as follow: (@fig:skill)
	- Identifying risks
	- Identifying root causes and making prevention plan 
	- Applying derived prevention plan to my own project 
	- Making prevention plans to prevent problems 
- Do you think that the skills and knowledge are useful? (@fig:useful)
- Are you satisfied with the course? (@fig:satisfaction)

![Do you understand the lecture?](image/understand.pdf){#fig:understand}

\input{skill}

![Do you think that the skills and knowledge are useful?](image/usefull.pdf){#fig:useful}

![Are you satisfied with the course?](image/satisfaction.pdf){#fig:satisfaction}

According to the questionnaire that asked about the degree of understanding, about 90 percent of trainees could understand the lecture. Also, from the questionnaire of the skill, about 80 percent of trainees could get the skill of identifying risks, root causes, and prevention plans for the same kind of project, for their project. Most of the trainees considered that the skills and the knowledge learned in the course are useful, and they ware satisfied.

From the description of the questionnaire, we found some challenges. Some of them said that it is too short a time to do all the work in the half-day lecture. We need more time to do all of them. Some trainees pointed out that it is difficult to understand and discuss with other teams that use another case. We prepare three cases to extend the discussion among the different teams which use different cases. However, given limited time, we should reduce the number of cases.

Also, we found some good opinions from the questionnaire. Training to obtain such kind of skills with the case method is quite easy to understand. The course gave an in-depth discussion of how to make prevention plans, *etc*. to apply the case to their own field. 

# A Case Example

## Overview

The section introduces a case used in the course. We select cases that some businesses in the industry tell us based on real problems in their field. We then add detailed stories to help trainees assess risks, *etc*.

## Former Part of the Case

The target system is a controller of a fully automated production line of metal molding products. The production line consists of many steps such as process and checks. In the solvent treatment and heat processing step, the line equips many pulse sensors, such as temperature, location, and speed sensors, to manage the amount of chemicals, temperature, and transportation time for the next step. The controller software controls motors for robots and conveyors based on data from sensors in realtime according to the production control system. The main routine of the software is invoked for each 5 msec in which software handles interrupts, and calculates P, and I values of PI control. The main routine uses many global variables. The developer appropriately takes care of control exclusively through the variables because interrupt handlers also deal with global variables. The developer should consider WCET (worst-case execution time) because the execution time of the main routine might vary because it has many conditional branches. A senior developer, who develops the system from the beginning, create a design specification document in which he explains such conditions including periodic 5 msec. 

The production company has started to produce many types of products based on requests from customers. Software size has been increased because variations of the processes have been increased. The senior developer describes the  essence of the changes in the design documents and in comments in the source codes.
The production company ordered the software development company to develop small changed software based on the previous one. The senior developer becomes the leader of the project.
Requirement from the production company chage constants and adding variables in the controller software to change periods of preheating, molding, and heating time.

The senior developer has been quite busy since he joined multiple project at the same time. However, he thinks that he can take care of the project due to minor changes. He employed a predefined development process for derivative software and assigned the project to a young developer. The young developer has adequate experience in web systems, but he does not have enough experience in embedded system development. Nevertheless, the senior  developer believes that the junior developer can handle the project well.

The junior engineer checks the source codes by referring to the design documents. He asks his senior things that are beyond his comprehension, especially the comments in the source codes. 

The senior developer explains the time constraint of 5msec. Therefore, the young developer thinks that he should keep small change to existing routines to avoid breaking the time constraints. He copies codes from existing ones and changes them according to requirements.

The derivative software development process requires a design review of the changed parts of the design, tests under a mock testing environment, and a final review. In the design review, the senior checks the program written by the junior, and he thinks "The code is a little bit lengthy. The program might be more compact if we change the main routine. But it might be OK." So, he just points out some mistakes, and he does not say anything about the design.

After that, the junior fixed codes that are pointed out. He tests with the mock environment, and he confirms that the behaviors of the code are not abnormal. He reports his work to the senior and passes the final review. The source codes are deployed after one week. 

## Latter Part of the Case

The junior and senior developer install the updated software in the presence of the production company. The installation has been done appropriately. The production company produces test samples step-by-step under varying heating time, *etc*. The test production on the first day progresses normally. The senior developer leaves the junior to handle them. 

On the third day, the line has started to produce defective items sporadically. The junior developer does not report it to the senior developer since he thinks that the cause of them is the malfunctions of equipment or testing machine. 

One week later, the producer company asks the developer company to help to identify the root causes of the production of defective items. 

The senior developer identifies that the updated software installed into the process controller has some defects. The original main routine handles multiple processes, such as the solvent treatment and the heating process, under constraints of 5 msec. However, the junior developer adds some routines to the main routine, as a result of the calculation of heating time errors. The heating time of a certain step is not appropriate. Therefore, the line produces defective items.

The changed routine produces sample items with varying control parameters such as heating time, *etc*. The path of the code is longer than normal under some combinations of parameters. In that case, the routines do not meet the 5 msec constraint if they encounter interruptions. The senior engineer identifies this phenomenon by verifying the codes using a tool.

The routines calculate inappropriate PI control values when the codes break the time constraint. However, it is difficult to find in the review process. We can easily identify the problem using the tool, but the process does not require the use of the tool.

The junior has insufficient experience in real-time processing. He understands, theoretically, that it is important to estimate WCET to meet the deadline. However, he does not understand this practically. He cannot consider the details of realt-ime processing.

The routines do not need to handle interruptions. He has to add codes to disable interruptions referring to the original codes. The senior developer also overlooked the lack of disabling/enabling interruptions.

The derivative development process does not require the stress test. It is difficult to reproduce the phenomenon under a mock environment, but we can easily find it using the stress test.

The senior developer might be able to find the problem at an early stage, but he leaves the field on the second day. It is one of the causes why problems are identified late.


# Conclusion

In this paper, we describe the education course that will allow developers to gain the skills to become aware of problems, learn how to cope with them, and prevent recurring problems. Through the case study, the course will give generalized knowledge that we can use another kind of product or technology. The course will utilize case studies to teach learners the skills they need.

We conducted an experimental course according to the curricula. Through the course, we identified that the proposed course works well with engineers from industries. we found some good opinions from the questionnaire. Training to obtain such kind of skills with the case method is quite easy to understand. The course gave an in-depth discussion of how to make prevention plans, *etc*. to apply the case to their own field. 

As further work, we should evaluate the course objectively. In the experimental course with given limited time, we could not do  evaluation through an examination or assignment of a report. 

\input{ack}

# References

\hspace{1em}
