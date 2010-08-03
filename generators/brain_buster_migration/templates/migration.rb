class <%= class_name %> < ActiveRecord::Migration
  class BrainBuster < ActiveRecord::Base; end;

  def self.up
    create_table "<%= migration_table_name %>", :force => true do |t|
      t.column :question, :string
      t.column :answer, :string
      t.column :locale, :string
    end

    create "What is two plus two?", "4", 'en'
    create "What is the number before twelve?", "11", 'en'
    create "Five times two is what?", "10", 'en'
    create "Insert the next number in this sequence: 10, 11, 12, 13, 14, ??", "15", 'en'
    create "What is five times five?", "25", 'en'
    create "Ten divided by two is what?", "5", 'en'
    create "What day comes after Monday?", "tuesday", 'en'
    create "What is the last month of the year?", "december", 'en'
    create "How many minutes are in an hour?", "60", 'en'
    create "What is the opposite of down?", "up", 'en'
    create "What is the opposite of north?", "south", 'en'
    create "What is the opposite of bad?", "good", 'en'
    create "Complete the following: 'Jack and Jill went up the ???", "hill", 'en'
    create "What is 4 times four?", "16", 'en'
    create "What number comes after 20?", "21", 'en'
    create "What month comes before July?", "june", 'en'
    create "What is fifteen divided by three?", "5", 'en'
    create "What is 14 minus 4?", "10", 'en'
    create "What comes next? 'Monday Tuesday Wednesday ?????'", "Thursday", 'en'

    create "Combien font deux plus deux?", "4", 'fr'
    create "Quel est le nombre avant douze?", "11", 'fr'
    create "Cinq fois deux font?", "10", 'fr'
    create "Insérer le prochain chiffre de cette séquence : 10, 11, 12, 13, 14, ??", "15", 'fr'
    create "Combien font cinq fois cinq?", "25", 'fr'
    create "Dix divisé par deux font?", "5", 'fr'
    create "Quel jour vient après Lundi?", "Mardi", 'fr'
    create "Quel est le dernier mois de l'année?", "Décembre", 'fr'
    create "Combien y a t'il de minutes dans une heure?", "60", 'fr'
    create "Quel est l'opposé de bas?", "haut", 'fr'
    create "Quel est l'opposé de Nord?", "sud", 'fr'
    create "Quel est l'opposé de mauvais?", "bon", 'fr'
    create "Quel est la couleur du cheval blanc d'Henri IV", "blanc", 'fr'
    create "4 fois quatre font?", "16", 'fr'
    create "Quel est le chiffre après 20?", "21", 'fr'
    create "Que vient avant Juillet?", "juin", 'fr'
    create "Combien font 15 divisé par trois?", "5", 'fr'
    create "14 moins 4 font?", "10", 'fr'
    create "Que viens après? 'Lundi Mardi Marcredi ?????'", "Jeudi", 'fr'

  end

  def self.down
    drop_table "<%= migration_table_name %>"
  end

  # create a logic captcha - answers should be lower case
  def self.create(question, answer)
    BrainBuster.create(:question => question, :answer => answer.downcase)
  end

end