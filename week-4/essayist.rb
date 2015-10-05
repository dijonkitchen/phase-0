# define method to accept title, topic, date, thesis, and sex
def essay_writer(title, topic, date, thesis, sex)
  # Your awesome code here!

  # create blank variables that depend on the person's sex
  she_or_he = 'nil'
  his_or_her = 'nil'
  him_or_her = 'nil'

  # change the pronouns based on the person's sex
  if sex == "female"
    she_or_he = "she"
    his_or_her = 'her'
    him_or_her = 'her'
  else
    she_or_he = 'he'
    his_or_her = 'his'
    him_or_her = 'him'
  end

  # add up all the text and puts it out
  puts "#{topic} was an important person in #{date.to_s}. #{she_or_he.capitalize} did a lot. I wanted to learn a lot more about #{him_or_her}. #{thesis} #{his_or_her.capitalize} contribution was important!"
end

essay_writer("The First Novelist", "Shikibu Murasaki", 1000, "She wrote the world's first novel, the Tale of Genji, between 1000 and 1012 and was a lady-in-waiting in the Heian Imperial court.", "female")

puts

essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "male")
#
# essay_writer(japanese_history_1) #=> this will output the text below, which I've saved as a variable `my_award_winning_essay_1` and "award_winning_essay_2"
#
# award_winning_essay_1 = "The First Novelist"
#
# "Shikibu Murasaki was an important person in 1000." She did a lot. I want to learn more about her. She wrote the world's first novel, the Tale of Genji, between 1000 and 1012 and was a lady-in-waiting in the Heian Imperial court. Shikibu's contribution is important
#
# award_winning_essay_2 = "The First Shogun"
#
# "Ieyasu Tokugawa was an important person in 1603. He did a lot. I want to learn more about him. His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years. Tokugawa's contribution is important."
