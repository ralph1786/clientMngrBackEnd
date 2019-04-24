# DaycareManager

Application for daycare that facilitates the management of its children's information. In addition it allows the parent to review its child's latest information and make payments to the daycare.


## Getting Started

To get the application up and running you must clone this project, which is the backend of the application you must also clone its corresponding frontend that has the name of *clientMngrFrontEnd*. Once you have cloned both repositories go into your backend, and in the terminal run **rails s** to start the rails server. For the frontend open it on your favorite browser by running **npm start** on a separate terminal.

### Prerequisites

```
Install latest version ruby on rails
Use rails -api flag and set database to Postgres
```

### Gems Used
1. bcrypt
2. active_model_serializer
3. rack-cors
4. jwt
5. faker


### Models and relationship
1. Provider
   1. Has many Children
   2. Has many Parents through Children
2. Children
   1. Belongs to Provider
   2. Belongs to Parent
3. Parent
   1. Has many Children
   2. Has many Providers through Children
   

## Built With

* ActionCable- To create separate channels for each user.
  
