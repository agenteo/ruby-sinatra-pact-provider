#!/bin/bash
echo "Copying latest API contracts..."
mkdir -p consumer_contracts
cp ../api-contracts/*.json consumer_contracts

gem install bundler
bundle
bundle exec rake pact:verify