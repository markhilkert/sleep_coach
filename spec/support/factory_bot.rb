# FactoryBot Configuration file

# Include FactoryBot methods so you don't have to
# preface every single command with `FactoryBot.`
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end