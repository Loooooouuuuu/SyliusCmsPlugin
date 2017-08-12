@managing_blocks
Feature: Adding image block
    In order to manage dynamic images
    As an Administrator
    I want to be able to add new image blocks

    Background:
        Given I am logged in as an administrator

    @ui
    Scenario: Seeing menu items
        When I go to the create image block page
        And I fill the code with "aston_martin_db_11"
        And I upload the "aston_martin_db_11.jpg" image
        And I add it
        Then I should be notified that new image block was created
        And block with "image" type and "/cms/block/image/aston_martin_db_11.jpg" content should be in the store