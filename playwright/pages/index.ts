import { Page } from '@playwright/test';

export class AlperenbekciPage {
    private page: Page;
    private header = 'h1';
    private submitButton = 'button[type="submit"]';

    constructor(page: Page) {
        this.page = page;
    }

    async navigate() {
        await this.page.goto('https://alperenbekci.me');
    }

    async getHeaderText() {
        return await this.page.locator(this.header).textContent();
    }

    async clickSubmitButton() {
        await this.page.locator(this.submitButton).click();
    }
}