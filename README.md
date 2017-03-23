# README

This API is a work in progress, started as a code challenge for Flock. The overview and structure are taken from the code challenge.

### Overview
In this "Smiles Transaction System", humans can give smiles and take them away. Humans can give smiles or take them away. The system should be capable of creating a “Human”, adding and deducting smiles from a “Human” by creating a “Transfer” and listing all Transfers for a human. Here’s the catch -- you can’t have a negative number of smiles. If no one has given you a smile, you can’t give one away. Thus, you can’t go below 0 smiles.

### Structure
* A Human is created with an email, firstName and lastName.
* They begin with 0 smiles.
* Each Transfer should take a Human id as well as an amount of smiles to add / deduct from the Human’s account. It should fail if the Human has insufficient smiles or cannot be found.

### Next Steps & Questions
* I'd like to add the API endpoints to this README, as I didn't make time during the challenge. I'd also like to add instructions on cloning the repo and getting it going on a local machine.
* I'd continue adding specs, particularly strengthening my request specs.
* I'd add the functionality for smiles to be taken away from a human giving them. I currently have a transfer with a human id that will be receiving smiles, but I haven't given the capability to remove them. I'd probably change the id's in transfer to be a giver and a receiver.


