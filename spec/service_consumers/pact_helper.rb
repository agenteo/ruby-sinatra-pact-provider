require 'pact/provider/rspec'

Pact.provider_states_for "aggregator_app" do

  provider_state "OAuth endpoints" do
    set_up do
      # Your set up code goes here
    end
  end

  provider_state "There are available travel offers" do
    set_up do
      # Your set up code goes here
    end
  end

end

Pact.service_provider "Seal_API" do

  honours_pact_with 'aggregator_app' do
    pact_uri 'consumer_contracts/aggregator_app-seal_API.json'
  end
end
