PROPOSALMAKER
=============

I created this repo as part of an interview challenge. It is a collection of models which represent proposals.

The given requirements were as follows: 

Proposals have a client
A proposal can be pending, accepted, or declined
A proposal can have fees & sections
Fees can be hourly, monthly, annual, or fixed
Fees can have a duration if they are hourly or monthly
Fees can be optional
Fees can have descriptions and a title
Sections can have content and a title
A proposal should calculate the total amount of the fees
A proposal should calculate the total amount without optional fees
A client should calculate the total amount owed for accepted proposals

The prompt asked me to spend two hours. I am not sure exactly how much time it took me to complete. 

OBSERVATIONS
============

What seemed like a fairly easy project was a bit more difficult than I first thought. The first difficulty I encountered is that rspec had updated since the last time that I made a Rails project from scratch, meaning that I had to fight with the configuration a bit. 

I thought most of the requirements were straightforward, but I found that I encountered a conceptual difficulty in the first and last requirements. I was imagining an app where one client is involved with multiple proposals and interpreted the last requirement as asking me to sum all of the accepted proposals. This was a bit at odds with the first requirement, where proposals are expected to have a client. 

It took me a few minutes to think of the solution - to make the relationship one-to-many, where one client can be a part of multiple proposals but each proposal can only have one client. 

The other requirements were straightforward and mostly involved setting up relationships and making a simple function to sum an array of objects, then differentiate arrays based on queries.

As the challenge only asked for models, I wrote no views or controllers for this project. I also used straight rspec and didn't bother with using FactoryGirl to create factories for testing. If this were a larger project, I definitely would do that.