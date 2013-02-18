class Need < ActiveRecord::Base
  attr_accessible :address, :category, :city, :contactno, :orgname

  def self.search(search)
		  if search
		    find(:all, :conditions => ['city LIKE ?', "%#{search}%"])
		  else
		    find(:all, :conditions => ['city LIKE ?', "kanpur"])
		  end
	end

end
