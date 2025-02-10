from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from playwright.sync_api import sync_playwright

@keyword("Get Element Text")
def get_element_text(locator):
    browser = BuiltIn().get_library_instance("Browser")
    page = browser.get_page()
    return page.locator(locator).text_content()

@keyword("Click Element")
def click_element(locator):
    browser = BuiltIn().get_library_instance("Browser")
    page = browser.get_page()
    page.locator(locator).click()

@keyword("Fill Input Field")
def fill_input(locator, text):
    browser = BuiltIn().get_library_instance("Browser")
    page = browser.get_page()
    page.locator(locator).fill(text)

@keyword("Check Element Visibility")
def check_element_visibility(locator):
    browser = BuiltIn().get_library_instance("Browser")
    page = browser.get_page()
    return page.locator(locator).is_visible()

@keyword("Submit Form")
def submit_form(locator):
    browser = BuiltIn().get_library_instance("Browser")
    page = browser.get_page()
    page.locator(locator).click()