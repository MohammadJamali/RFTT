# Saturn Time Tracker

![youtube](https://www.youtube.com/watch?v=pncSjp2jbpQ)

**Saturn** is a free, open-source application designed to help *freelancers* efficiently manage their projects and tasks. By leveraging the [Request Network](https://request.network), users can create invoices, including support for cryptocurrency, based on the time spent on individual tasks.

In the freelancing world, there are numerous tools for task and time management, such as Jira and others. However, managing payment processes remains a significant challenge. The main idea I implemented for this hackathon is to develop an application using Flutter, which works across all platforms and bridges two critical areas: task and time management, and payment tracking.

![brochure](https://raw.githubusercontent.com/MohammadJamali/Saturn/refs/heads/main/screenshots/saturn.jpg)

### Key Features of the Application:

1. **Project and Task Management**  
   Users can create multiple projects and define various tasks for each project. When starting a task, they can activate the app’s built-in timer by clicking the *Track* button and proceed with their work. Once they finish, they stop the timer.  
   The app automatically adds the tracked time to the task’s total logged hours. If users return to the same task later, they can start the timer again, and the app will seamlessly calculate the new time and add it to the existing log.


|  |  | 
| :------ | :------ | 
| ![home](https://raw.githubusercontent.com/MohammadJamali/Saturn/refs/heads/main/screenshots/3.png) | 
![home](https://raw.githubusercontent.com/MohammadJamali/Saturn/refs/heads/main/screenshots/11.png) | 

2. **Payment Integration**  
   After completing tasks, users can define different accounts. This feature is designed to prepare for automatic invoice generation in later stages, allowing users to link invoices to specific accounts or clients.  
   Users can view invoices for a particular client by clicking on their account. To create a new invoice, they simply click the *Add* button, select the relevant project, and the app automatically lists the tasks with tracked time. Based on a predefined rate (e.g., tokens per second), the app calculates the total amount. Currently, these rates are hardcoded for testing purposes but can be adjusted in the settings.

![invoice](https://raw.githubusercontent.com/MohammadJamali/Saturn/refs/heads/main/screenshots/6.png)

3. **Invoice Generation and Sharing**  
   Once the user clicks *Create Invoice*, the app generates the invoice. A few seconds later, a Metamask signature request pops up to finalize the process. Once signed, the invoice is ready and displayed in the app.  
   By clicking the *Share* button, users can copy a link to the invoice and view it in a browser.

![invoice](https://raw.githubusercontent.com/MohammadJamali/Saturn/refs/heads/main/screenshots/7.png)

### Why the Name “Zohal”?  
The app is named *Zohal* (Saturn) because, in ancient mythology, Saturn is associated with time. This reflects the app’s primary focus on time tracking and its connection to payment processes.

### In Conclusion:  
*Zohal* aims to provide a unified solution for freelancers, seamlessly integrating task and time management with payment tracking. By simplifying these workflows, it helps users focus more on their work and less on administrative overhead.

|  |  |  
|:------ |:------ |  
| ![screenshot1](https://raw.githubusercontent.com/MohammadJamali/Saturn/refs/heads/main/screenshots/1.jpg) | ![screenshot2](https://raw.githubusercontent.com/MohammadJamali/Saturn/refs/heads/main/screenshots/2.jpg) |
| ![screenshot8](https://raw.githubusercontent.com/MohammadJamali/Saturn/refs/heads/main/screenshots/8.jpg) | ![screenshot9](https://raw.githubusercontent.com/MohammadJamali/Saturn/refs/heads/main/screenshots/9.jpg) |
