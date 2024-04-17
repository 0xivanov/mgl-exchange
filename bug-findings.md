### Bug Findings

1. **Package.json Server Not Starting**
   - **Changes:**
     - Before: `"server": "cd backend & npm run dev"`
     - After: `"server": "cd backend && npm run dev"`

2. **Prev is Not Correctly Checked in user.service.js for Errors**
   - **Changes:**
     - Before: `if(prev)`
     - After: `if(prev && prev.error === undefined)`

3. **Emailer.service.js Does Not Have Error Handling Whether or Not the Mail Has Been Sent**
   - The error is only printed; haven't fixed it.

4. **UserValidator.middleware.js NormalizeEmail Could Modify Valid Email**
   - `ivanivanov.ii726@gmail.com` sent from the client gets turned into `ivanivanovii726@gmail.com`.

5. **Error in new_.sql File: Missing Comma on Line 212**

6. **PrivateKey and Keyphrase Are Present in the Wallet Object and Could Be Potentially Exploited**

7. **Key Phrase Should Be Cryptographically Linked**
   - Currently, the words are stored in the database, and we are checking if they exist.

8. **No Tests for the API**

9. **The Response/Error Objects Returned from the Different API Endpoints Can Be Made into Structs**
   - To reduce duplication and future proofing.

10. **Mixing up Promises with Callbacks and How Asynchronous Operations Are Handled in WalletLanding.js**