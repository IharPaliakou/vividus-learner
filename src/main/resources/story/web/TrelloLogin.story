Description: login to Trello.com, create a new board, add two or more cards, perform visual check, delete board and sign out


Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
|login-button		|By.xpath(//a[contains(@class,'Buttonsstyles')][contains(text(),'Log in')])|
|emailid			|By.xpath(//input[@class='form-field'][@inputmode='email'])|
|continue			|By.xpath(//input[@type='submit'])|
|pass				|By.xpath(//input[@name='password'])|
|login-btn			|By.xpath(//button[@id='login-submit'])|
|CreateMain			|By.xpath(//button[@data-testid='header-create-menu-button'])|
|board				|By.xpath(//input[@type='text'])|
|Createboard		|By.xpath(//button[@data-testid='header-create-board-button'])|
|switch-to			|By.xpath(//span[@class='css-snhnyn'][@aria-label='ApplicationSwitcherIcon'])|
|trello-home		|By.xpath(//a[@data-testid='switcher-item__TRELLOTrello'])|
|create-new-board	|By.xpath(//button[@data-testid='create-board-submit-button'])|
|board-title1		|By.xpath(//input[@class='list-name-input'])|
|board-title2		|By.xpath(//div[@class='js-add-list list-wrapper mod-add']//input[@class='list-name-input'])|
|create-button		|By.xpath(//button[contains(@type,'button')][contains(@data-test-id,'create-board-submit-button')])|
|todo-textbox		|By.xpath(//div[@class='list-card-details u-clearfix'])|
|add-list-btn		|By.xpath(//div[@class='js-add-list list-wrapper mod-add']//input[@type='submit'])|
|view-board			|By.xpath(//div[@class='board-tile-details is-badged'])|
|home				|By.xpath(//span[@class='css-snhnyn'][@aria-label='ApplicationSwitcherIcon'])|
|close board		|By.xpath(//button[@title='Close board'])|
|confirm-close		|By.xpath(//button[@title='Close'])|
|per-delete-board	|By.xpath(//button[contains(text(),'Permanently delete board')])|
|confirm-delete		|By.xpath(//button[@data-testid='close-board-delete-board-confirm-button'])|
|logout-menu		|By.xpath(//div[@title='Ravi (raviraj7jadhav)'])|
|logout-btn			|By.xpath(//button[@data-testid='header-member-menu-logout'])|
|My-board			|By.xpath(//li[@class='boards-page-board-section-list-item'][1]/a)|
|select-board		|By.xpath(//button[@aria-label='Board actions menu'])|
|board-workspace	|By.xpath(//a[@href='/u/raviraj7jadhav/boards'])|
|Add-card1			|By.xpath((//span[@class='icon-sm icon-add']/ancestor::div[@class='card-composer-container js-card-composer-container'])[1])|
|Add-list-title1	|By.xpath(//input[@class='list-name-input'])|
|Add-card2			|By.xpath(//input[@class='nch-button nch-button--primary confirm mod-compact js-add-card'])|
|Add-text2			|By.xpath(//input[@class='list-name-input'])|
|To-do-text1		|By.xpath(//textarea[@class='list-card-composer-textarea js-card-title'])|
|board-in-list		|By.xpath(//a[@title='Board number 1 (currently active)'])|
|three-dots			|By.xpath((//div[@role='menu'])[3])|
|final-logout		|By.xpath(//button[@id='logout-submit'])|

Scenario: Go to the website trello.com
Given I am on a page with the URL 'https://trello.com/home'

Scenario: Verify login to trello.com

When I click on element located `<login-button>`

When I enter `raviraj7jadhav@gmail.com` in field located `<emailid>`
When I click on element located `<continue>`
When I enter `Test@123` in field located `<pass>`
When I click on element located `<login-btn>`

Scenario: Create a New board add two or more cards to it

When I click on element located `<CreateMain>`
When I click on element located `<Createboard>`
When I enter `Board number 1` in field located `<board>`
When I click on element located `<create-new-board>`
When I enter `List1` in field located `<Add-list-title1>`
When I click on element located `<add-list-btn>`
When I enter `List2` in field located `<Add-list-title1>`

Scenario: Perform a visual check
When I change context to element located `By.xpath(//div[@id='content'])`
When I ESTABLISH baseline with name `screen`
When I reset context

Scenario: Delete board and Logout from trello.com
When I click on element located `<board-in-list>`
When I click on element located `<three-dots>`
When I click on element located `<close board>`
When I click on element located `<confirm-close>`
When I wait until element located `<per-delete-board>` appears
When I click on element located by `<per-delete-board>`
When I click on element located `<confirm-delete>`
ui.wait.timeout=PT30S
When I click on element located `<logout-menu>`
When I click on element located `<logout-btn>`
When I click on element located `<final-logout>`
