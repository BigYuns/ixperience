class NamesController < ApplicationController
  def index
  	@welcome_message="WELCOME to iXperience!"
  end

  def students

  	@students=["Yunny", "Alexis", "Pavi", "Aaron", "Oscar", "Gloryah", "Tyler", "Kaan", "Mariella", "Emily", "Zack", "Yinging", "Seth", "Matthew", "Molly","Kate", "Daniel", "Susana", "Austin", "Charlotte", "Jack", "Erica", "Aryaman", "Kevin", "Stanley","Dilys", "Olivia", "Ian", "Enrique", "Blake", "Alex", "Asad", "Bailey","Darren", "Steffi", "Sihan", "Urvish", "Ben", "Adam", "Brian"]
  end
  

end
