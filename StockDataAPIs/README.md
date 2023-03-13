#  Documentation: —

The purpose of this app is to allow users to pull and view data from some of the following stock market APIs:
    https://api.stockdata.org/v1/data/quote?symbols=AAPL,TSLA,MSFT&api_token=YOUR_API_TOKEN
    https://api.stockdata.org/v1/news/all?symbols=TSLA,AMZN,MSFT&filter_entities=true&language=en&api_token=YOUR_API_TOKEN
    After hitting these APIs with the help of URLSession, the incoming JSONs have been decoded with help of JSONDecoder.
 
 This project uses the MVVM architectural design pattern. In this design pattern, the Model represents the data and is responsible for managing the state of the application. The View Model represents the business logic of the application and is responsible for performing any necessary data operations, to get the data ready to be displayed to the user and to handle any data requests coming from the View. The View is the application's UI, and its job is to show the data and handle user interactions. So, in effect, the View Model acts as the middleman/mediator/facilitator between the Model and the View. In this way one of the key concepts of software engineering, i.e., separation of concerns is achieved.
 
AppUtilities group (and the rest of the app) follows SOLID principles and contains the following: —
Database Manager
Network Manager
API Manager

The app as a whole follow MVVM architectural design pattern and contains the following: —
Business Data Models (School, SchoolInfo)
Core Data Models (CDSchool)

View Models are: —
SchoolViewModel
SchoolInfoViewModel

Views contain: —
Controls (cell etc, any custom view)
View Controllers (SchoolViewController, SchoolInfoViewController)
