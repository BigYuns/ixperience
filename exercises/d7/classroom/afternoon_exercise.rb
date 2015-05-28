E1: 
These are the methods of a model . 
What is a model? : rails OBJECT that has methods for managing data 
1) MODEL is always going to have a singular name. 
2) MODEL has methods to access data
3) MODEL has a single database table (whose name is going to be pluaral) that is going to contain a record 
.all : Returns a collection of all records of this model in the database ; class method 
.first : Gets the first record of a table ; class method 
.new : creates a new instance of a model: this does not change the database until I call save; class method 
.find : looks up a single MODEL by it's id. only works for ids. ; instance method 
.find_by : looks for a single model using a hash.  ; class method 
.where : similar to find_by but will return all records that match the satement ; class method 
.save ;instance method 
.update_attributes ; instance method 
.destroy  ; instance method 
Q1: What's the difference between .find and .find_by?
-find finds a single record(model)  by using its id. 
-find_by finds a single record by using a key (the name of column) in a hash. 
Q2: What's the difference between .where and .find_by?
-where returns all records that match the statement. while find_by returns only one record . 


E2: ActiveQuiz
What is a database?: it permanetly stores data / a collection of information that is organized so that it can be easily accessed, managed and updated 

What is a database table? 
How does it relate to a database? 
What's a good analogy for a database table (i.e. a way to visualize it)?
: database table : a table stores all the data under category. It stores all the info/records in database according to the categories

Draw the tweets database table  :{follow, post, friends}

Why do we use models/resources at all?
	resource is for creating resourceful routing. 
	Model is an object that has methods for managing data. It has a database table. To manage the records in the database table 
	we have several methods in the controllers and setting up a each route is annoying. 
	Hence if we create a resource in routing named accordingly to the controllers name, then we can create data managing methods
	such as CRUD (Create read, update and destory) in the controller that has the same name with the resource and do not need to 
		worry about the routing. 
	Model is an object that is used in controller's each action(method) to call the data managing methods in the conroller's action. 
	Resource is same as the database table. (that's why it should be the name of the plural form of the model's name)

What is ActiveRecord?
ActiveRecord is a so-called object-relational mapping (ORM) layer (also known as a relational persistence layer), 
similar in scope to Hibernate (Java) or ADODB (PHP). Instead of dealing with the database through SQL statements, an ORM layer presents 
records in a database table as a series of objects; it also provides class-level methods for creating database connections, querying tables, and so on


What's the difference between a database table, resource and an ActiveRecord model?

databse table: contains all the records 
resource: a routing/ allows me to add actions in the controller 





E3: Console Fun
Fire up rails console from within your blog rails app folder from yesterday. Then do the following things:

Create a new Article.
Find it with the Article.find method
Find it by title with Article.where(title: "...")
Find it by title with Article.find_by(title: "...")
Describe to yourself what the difference is between those two methods.
	where: returns all the records that have the same title
	find_by: returns only the first record that has the same title 

Update that Article to have a different title. Is this possible?
	yes 
Update that Article to have a different text. Is this possible?
	yes
Update that Article to have a different id. Is this possible?
	yes
Delete that Article.
