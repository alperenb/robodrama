from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from playwright.sync_api import sync_playwright

from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn


@keyword("Open Alperenbekci Page")
def open_alperenbekci_page():
    browser_lib = BuiltIn().get_library_instance("Browser")

    # Ensure a new page is created and navigated
    browser_lib.new_page("https://alperenbekci.me")

    # Wait for an element to confirm page load
    browser_lib.wait_for_elements_state("h1", state="stable")




@keyword("Navigate to Contact Page")
def navigate_to_contact_page():
    browser_lib = BuiltIn().get_library_instance("Browser")
    page = browser_lib.get_current_page()  # Ensure it returns a Playwright Page
    page.locator("a[href='https://www.linkedin.com/in/alperenbekci/']").click()
    page.wait_for_selector("h1:has-text('Linkedin')")
