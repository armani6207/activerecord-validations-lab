class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title != nil
            unless record.title.include? ("Won't Believe" or "Secret" or "Top" or "Guess")
                record.errors.add :title, "Title needs clickbait!"
            end
        else
            record.errors.add :title, "There is no title!"
        end
    end
end