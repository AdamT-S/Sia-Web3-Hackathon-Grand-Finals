import smartpy as sp

@sp.module
def main():
    class ContractTest(sp.Contract):
        def __init__(self, greeting):
            sp.cast(greeting, sp.string)
            self.data.greeting = greeting

        @sp.entrypoint  # Note the indentation
        def replace(self, parameters):
            self.data.greeting = parameters.text

        @sp.entrypoint  # Note the indentation
        def append(self, parameters):
            self.data.greeting += parameters.text

# Automated tests that run on simulation
@sp.add_test()
def test():
    # Initialize the test scenario
    scenario = sp.test_scenario("Test scenario", main)
    scenario.h1("Test")

    # Initialising the contract
    contract = main.ContractTest("Hello there")
    scenario += contract

    # Verify that the value in storage was set correctly
    scenario.verify(contract.data.greeting == "General Kenobi")

    # Test the entrypoints and check the new storage value
    contract.replace(text = "So")
    contract.append(text = " uncivilised!")
    scenario.verify(contract.data.greeting == "There is another!")