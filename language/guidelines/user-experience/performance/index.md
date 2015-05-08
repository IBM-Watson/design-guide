---
type: guideline
title: Performance
resources:
  links:
    - name: "North: Performance"
      source: http://pointnorth.io/#performance
    - name: "Have Your Cake and Eat it Too: A Primer on Performance"
      source: http://una.im/slides-nom-nom-perf/#/
    - name: "Our need for web speed: It’s about neuroscience, not entitlement"
      source: http://www.webperformancetoday.com/2012/03/21/neuroscience-page-speed-web-performance/
    - name: "Powers of 10: Time Scales in User Experience"
      source: http://www.nngroup.com/articles/powers-of-10-time-scales-in-ux/
    - name: "Web Page Test"
      source: http://www.webpagetest.org/
---

Performance is an integral part of a user's experience no matter the medium that interface takes. Web delivered interfaces, native interfaces, application programing interfaces; whenever a user interacts with a product, performance always needs to be a top concern. Slow performing interfaces have been shown to [cost business money](http://www.fastcompany.com/1825005/how-one-second-could-cost-amazon-16-billion-sales), [affecting a company's bottom line](https://blog.kissmetrics.com/loading-time/) and costing conversions, but more than that, performance is about respecting our users and the way humans perceive and react to the world around them.

## The Neuroscience of Performance

In Jakob Nielsen's book _Usability Engineering_, he [describes 3 important limits in human response time](http://www.nngroup.com/articles/response-times-3-important-limits/):

> * **0.1 second** is about the limit for having the user feel that the system is **reacting instantaneously**, meaning that no special feedback is necessary except to display the result.
>* **1.0 second** is about the limit for the **user's flow of thought** to stay uninterrupted, even though the user will notice the delay. Normally, no special feedback is necessary during delays of more than 0.1 but less than 1.0 second, but the user does lose the feeling of operating directly on the data.
> * **10 seconds** is about the limit for **keeping the user's attention** focused on the dialogue. For longer delays, users will want to perform other tasks while waiting for the computer to finish, so they should be given feedback indicating when the computer expects to be done. Feedback during the delay is especially important if the response time is likely to be highly variable, since users will then not know what to expect.

This research, published in 1993, Jakob has since been expanded upon with [Powers of 10: Time Scales in User Experiences](http://www.nngroup.com/articles/powers-of-10-time-scales-in-ux/) which goes in to more detail about the importance of time in the user's perception of an experience. Beyond Jakob, additional research suggests that the 10 second maximum in practice winds up being closer to **5 seconds** for many people, with [50% of mobile users exiting an application or site if it takes more than 5 second to load](http://e-commercefacts.com/research/2011/07/what-usrs-want-from-mobil/19986_WhatMobileUsersWant_Wp.pdf). In 2010, CA Technologies commissioned a study to [quantify how humans react to slow web sites](http://www.webperformancetoday.com/2011/02/24/website-performance-web-stress/). How they react, called *web stress*, showed that "**…participants had to concentrate up to 50% more when using badly performing websites.**" and that they had "**…greater agitation and stress**" when using slow websites. The reason for this *web stress* is due to human short-term memory, mainly that [it is pretty bad](http://www.nngroup.com/articles/website-response-times/). There are three parts of memory humans use at any given time (not including long-term memory) that have direct effects on how we perceive performance: sensory memory, short-term memory, and working memory.

### Sensory Memory

[Sensory memory](http://en.wikipedia.org/wiki/Sensory_memory) is the most basic input from an organism's senses, for humans sight, sound, touch, taste, and smell. They retain impressions of sensory information after the original stimulation has ceased, stored just long enough to be transfered to short-term memory. There are three types of sensory memory: **iconic** which refers to visual stimuli, **echoic** which refers to auditory stimuli, and **haptic** which refers to touch stimuli. When talking about interface performance (and responsiveness), *iconic memory* is the primary area of focus.

There are two components of [*iconic memory*](http://en.wikipedia.org/wiki/Iconic_memory), **visible persistence** and **informational persistence**. *Visible persistence* deals with the visual representation of created by the sensory system, whereas *informational persistence* deals with a coded version of the visual representation which is then processed by the brain. When talking about the perception of performance and responsiveness in interfaces, the former is where we can work on optimization. It has been experimentally shown that the duration of *visible persistence* is between **100ms-200ms**, meaning that if an interface is able to react to a user's input and respond to them in **<100ms**, the reaction will be perceived as a seamless continuation of the interaction. Anything longer and our *iconic memory* will reset with whatever the current stimuli is, risking an interruption in the perception of an interface by the user.

### Short-term and Working Memory

[Short-term memory](http://en.wikipedia.org/wiki/Short-term_memory) is the capacity of holding small amount of information in an active, readily available state whereas [working memory](http://en.wikipedia.org/wiki/Working_memory) is the system responsible for holding and processing of new and already stored information. The two work together to store, comprehend, process, and update all information coming in from sensory memory as well as keep current tasks and thoughts close at hand.

Short-term memory is commonly cited to only be able to hold [7 ± 2](http://en.wikipedia.org/wiki/The_Magical_Number_Seven,_Plus_or_Minus_Two) chunks of information at a time, and that if more information is entered in to the short-term memory in that time, retrieval of information stored earlier becomes error prone. Short term memory has also been found to decay and only last around 18 seconds unless an individual is actively trying to retain a piece of information.

Working memory's capacity has been hard to pin down exactly, but the two most prominent models, when taken together, suggest that the more information that must be maintained in working memory, the slower and more error prone concurrent process become and that the rate of decay of working memory is based on the temporal density and attentional demands of the processing task (this is also known as *cognitive load*).

### The Size and Speed of Immersion

Sensory memory, short-term memory, and working memory combine to determine how immersive an interface feels to a user. The faster a interface is able to respond to a user, the faster that user's sensory memory can pick up the response, the faster that response can be stored in short-term memory, and the faster working memory can start processing the result in context of the input. The longer that initial step takes, or the larger the amount being asked for and retrieved, the more likely that a user's memory for the task at hand will decay. This decay is what causes *web stress* and leads users abandon tasks and sites entirely.

## Notifying Users About Performance

With an understanding of memory in hand, along with Jakob's research, users should be notified about duration of tasks in the following ways:

* **<=100ms** - If a response takes 100ms or less, no notification is needed
* **>100ms** - If a response takes more than 100ms, an indication that a user's response is being processed should be provided. This is commonly a loading indicator or (ideally) a progress bar showing percent complete
* **>3s** - If a response takes more than 3s, the task should be backgrounded, giving the user the ability to subscribe to updates for when the task completes. Backgrounded tasks should include context of the original request in order to assist the user recall the reason the request was made.

## Grading and Measuring Performance

Whenever working with a network powered interface (websites, native apps that make network calls, cross-network APIs, etc…), the following measurements should be performed and graded against in order to inform if an interface is performing at the level expected:

* Main content is available and usable in **<1s** on a **5/1 Mbps connection with a 28ms round trip time** on a *cold cache*
* Main content is available and usable in **<3s** on a **1.6 Mbps/768 Kbps connection with a 150ms round trip time** on a *cold cache*

All interfaces should be tested against both. [Web Page Test](http://www.webpagetest.org/) is a tool that will allow teams to test their website performance metrics against these numbers. 
