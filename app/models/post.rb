class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :clickbait
    

   def clickbait
    
        if !title
            errors.add(:title, "No")
        else

        unless   title.include? ( "You Won't Believe"||  "Secret" ||"Guess" ||  "Top ")
                errors.add(:title, "No")
         end
        end
            
    end


    
end
