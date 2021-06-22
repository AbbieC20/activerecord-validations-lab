class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless !record.title.nil? && record.title.match?(/Won't Believe/ || /Secret/ || /Top/ || /Guess/)
          record.errors[:title] << "This post seems to be uninteresting!"
        end
    end
end
