PROPOSALMAKER
=============

I created this as part of an interview challenge. It is a collection of models which represent proposals. The given requirements were as follows: 

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

OBSERVATIONS
============

What seemed like a fairly easy project was a bit more difficult than I first thought. The first difficulty I encountered is that rspec had updated since the last time that I made a Rails project from scratch, meaning that I had to fight with the configuration a bit. 

I thought most of the requirements were straightforward, but I found that I encountered a conceptual difficulty in the first and last requirements. I was imagining an app where one client is involved with multiple proposals and interpreted the last requirement as asking me to sum all of the accepted proposals. This was a bit at odds with the first requirement, where proposals are expected to have a client. 

