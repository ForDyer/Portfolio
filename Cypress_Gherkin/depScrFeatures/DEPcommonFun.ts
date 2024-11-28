/* eslint-disable jest/valid-expect */
import { getData, getLocator } from "cypress/support/util";

let randomText = "";

export function navigate(url: any) {
    cy.visit(getLocator(url));
}

export function navigateWithLink(url: any) {
    cy.visit(url);
}

export function waitUntilVisible(text: string) {
    cy.contains(text, { timeout: 10000 }).scrollIntoView().should("be.visible");
}

export function waitUntilInVisible(text: string) {
    cy.contains(text, { timeout: 10000 }).should("not.exist");
}

export function sendKey(xpath: any, key: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).type(key, { force: true });
    } else {
        cy.get(element).type(key, { force: true });
    }
}

export function sendKeyFromData(xpath: any, key: any) {
    const element = getLocator(xpath);
    const data = getData(key);
    if (element.includes("//")) {
        cy.xpath(element).type(data, { force: true });
    } else {
        cy.get(element).type(data, { force: true });
    }
}

export function clickElementByText(text: string) {
    cy.xpath(`(//*[text()='${text}'])[1]`).click({ force: true });
}

export function click(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).click({ force: true });
    } else {
        cy.get(element).click({ force: true });
    }
}

export function containsText(xpath: any, text: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).contains(text);
    } else {
        cy.get(element).contains(text);
    }
}

export function elementVisible(text: any) {
    cy.contains(text).scrollIntoView().should("be.visible");
}

export function elementNotVisible(text: any) {
    cy.contains(text).should("not.exist");
}

export function waitSecond(second: number) {
    cy.wait(second * 1000);
    Cypress.on("uncaught:exception", (err, runnable) => false);
}

export function hoverOn(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).trigger("mouseover", { timeout: 3000 });
    } else {
        cy.get(element).trigger("mouseover", { timeout: 3000 });
    }
}

export function sendKeyIfExist(xpath: any, key: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element, { timeout: 2000 })
            .should((_) => { })
            .then(($button) => {
                if (!$button.length) {
                    cy.log("element not exist");
                } else {
                    cy.wrap($button).each((x) => {
                        cy.xpath(element).type(key, { force: true });
                    });
                }
            });
    } else {
        cy.get(element, { timeout: 2000 })
            .should((_) => { })
            .then(($button) => {
                if (!$button.length) {
                    cy.log("element not exist");
                } else {
                    cy.wrap($button).each((x) => {
                        cy.get(element).type(key, { force: true });
                    });
                }
            });
    }
}

export function sendKeySlowly(xpath: any, key: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).type(key, { delay: 100, force: true });
    } else {
        cy.get(element).type(key, { delay: 100, force: true });
    }
}

export function doubleClick(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).dblclick({ force: true });
    } else {
        cy.get(element).dblclick({ force: true });
    }
}

export function rightClick(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).rightclick({ force: true });
    } else {
        cy.get(element).rightclick({ force: true });
    }
}

export function clickIfExist(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element, { timeout: 2000 })
            .should((_) => { })
            .then(($button) => {
                if (!$button.length) {
                    cy.log("element not exist");
                } else {
                    cy.wrap($button).each((x) => {
                        cy.xpath(element).click({ force: true });
                    });
                }
            });
    } else {
        cy.get(element, { timeout: 2000 })
            .should((_) => { })
            .then(($button) => {
                if (!$button.length) {
                    cy.log("element not exist");
                } else {
                    cy.wrap($button).each((x) => {
                        cy.get(element).click({ force: true });
                    });
                }
            });
    }
}

export function clear(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).clear({ force: true });
    } else {
        cy.get(element).clear({ force: true });
    }
}

export function clickOnElementByKeyboardKey(key: any, xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).type(`{${key}}`, { force: true });
    } else {
        cy.get(element).type(`{${key}}`, { force: true });
    }
}

export function clickOnElementByKeyboardTwoKey(key1: any, key2: any, xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).type(`{${key1}} + {${key2}}`, { force: true });
    } else {
        cy.get(element).type(`{${key1}} + {${key2}}`, { force: true });
    }
}

export function containsExistsRandom(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).contains(randomText);
    } else {
        cy.get(element).contains(randomText);
    }
}

export function sendRandomKey(xpath: any) {
    const element = getLocator(xpath);
    const pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    for (let i = 0; i < 10; i++) {
        randomText += pattern.charAt(Math.floor(Math.random() * pattern.length));
    }
    if (element.includes("//")) {
        cy.xpath(element).type(randomText, { force: true });
    } else {
        cy.get(element).type(randomText, { force: true });
    }
}

export function writeExistRandomKey(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).type(randomText, { force: true });
    } else {
        cy.get(element).type(randomText, { force: true });
    }
}

export function goBack() {
    cy.go("back");
}

export function selectOptions(key: any, visibleText: any) {
    const element = getLocator(key);
    cy.get(element).should("be.visible").select(visibleText);
}

export function selectOptionsWithIndex(index: any, key: any) {
    const element = getLocator(key);
    cy.get(element).should("be.visible").select(index);
}

export function checkElementValue(xpath: any, val: any) {
    const element = getLocator(xpath);
    cy.get(element)
        .eq(0)
        .invoke("val")
        .then((text) => {
            if (text === val) {
                cy.log(`${text} = ${val}`);
            } else {
                throw new Error("Values ​​are not equal.");
            }
        });
}

export function scrollUntilVisible(xpath: any) {
    const element = getLocator(xpath);
    cy.get(element).scrollIntoView();
}

export function refreshPage() {
    cy.reload();
}

export function linkContains(text: any) {
    cy.url().should("include", text);
}

export function selectElementFromList(key: any) {
    const locator = getLocator(key);
    cy.xpath(locator).find('li').first().click();
}

export function selectThirdElementFromList(key: any) {
    const locator = getLocator(key);
    cy.xpath(locator).find('li').first().next().next().click();
}

export function saveElementText(xpath: any, text: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).invoke("text").as(text);
    } else {
        cy.get(element).invoke("text").as(text);
    }
}

export function compareElementText(xpath: any, text: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.get(`@${text}`).then((val: any) => {
            cy.xpath(element).contains(val);
        });
    } else {
        cy.get(`@${text}`).then((val: any) => {
            cy.get(element).contains(val);
        });
    }
}

export function checkIsChecked(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).should('be.checked');
    } else {
        cy.get(element).should('be.checked');
    }
}

export function checkIsNotChecked(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).should('not.be.checked');
    } else {
        cy.get(element).should('not.be.checked');
    }
}

export function copyPoReference(xpath: any) {
    const element = getLocator(xpath);
    cy.get(element).invoke('text').then((notificationText) => {
        const parts = notificationText.split("and Product ");
        const referenceNumber = parts[1];
        cy.wrap(referenceNumber).as('copied reference');
    });
}

export function copyWfReference(xpath: any) {
    const element = getLocator(xpath);
    cy.get(element).invoke('text').then((notificationText) => {
        const referenceNumber = notificationText.split("CORE ")[1].split(" LOGIN")[0];
        cy.wrap(referenceNumber).as('copied reference');
    });
}

export function writeCopiedReference(xpath: any) {
    const element = getLocator(xpath);
    cy.get('@copied reference').then((copiedReference: any) => {
        cy.get(element).type(copiedReference, { force: true });
    });
}

export function checkElementExist(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).should('exist');
    } else {
        cy.get(element).should('exist');
    }
}

export function checkElementNotExist(xpath: any) {
    const element = getLocator(xpath);
    const timeout = 30000;
    if (element.includes("//")) {
        cy.xpath(element).should('not.exist', { timeout });
    } else {
        cy.get(element).should('not.exist', { timeout });
    }
}

export function checkElementIsEmpty(xpath: any) {
    const element = getLocator(xpath);
    const timeout = 30000;
    if (element.includes("//")) {
        cy.xpath(element).should('be.empty', { timeout });
    } else {
        cy.get(element).should('be.empty', { timeout });
    }
}

export function checkElementText(xpath: any, text: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).invoke('text').then(elementText => {
            if (text === elementText) {
                cy.log(`${text} = ${elementText}`);
            } else {
                throw new Error(`${text}Text are not equal.${elementText}`);
            }
        });
    } else {
        cy.get(element).invoke('text').then(elementText => {
            if (text === elementText) {
                cy.log(`${text} = ${elementText}`);
            } else {
                throw new Error(`${text}Text are not equal.${elementText}`);
            }
        });
    }
}

export function selectText(xpath: any, text: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).find('li').contains(text).click();
    } else {
        cy.get(element).find('li').contains(text).click();
    }
    cy.log(`Selection of'${text}'option is successful`);
}

export function fieldValue(xpath: any, text: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).should('have.value', text);
    } else {
        cy.get(element).should('have.value', text);
    }
}

export function copyCellInput(xpath: any) {
    const element = getLocator(xpath);
    cy.xpath(element).then(($cell) => {
        const cellInput = $cell.text().trim();
        cy.wrap(cellInput).as('copyRef');
    });
}

export function loginWithUsername(key1: any, key2: any) {
    cy.visit(getLocator("CORE_PLUS"));
    cy.contains("Log in", { timeout: 10000 }).should("be.visible");
    cy.get('#usercode').clear({ force: true }).type(key1);
    cy.get(`input[name='password']`).type(key2);
    cy.get(`button[aria-label='Log in']`).click({ force: true });
    cy.contains('Dashboard').scrollIntoView().should("be.visible");
}

export function doubleClickText(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).type('{selectall}');
    } else {
        cy.get(element).type('{selectall}');
    }
}

export function tableColumnContainsText(expectedText: any, columnName: any) {
    let previousMaxRow = "";
    let newMaxRow = "";

    function checkEachCellByColumn(eText: any, cName: any) {
        const formattedColumnName = `'${columnName}'`;
        cy.xpath(`(//table[@role='table'])[last()]//tr//th[@role='columnheader'][. = ${formattedColumnName}]`)
            .then(($columnHeader) => {
                const columnIndex = $columnHeader.index();
                cy.log(columnIndex.toString());
                const columnSelector = `(//table[@role='table'])[last()]//tbody//td[${columnIndex + 1}]`;
                cy.log(columnSelector);
                cy.xpath(columnSelector).each(($cell) => {
                    const actualValue = $cell.text().trim();
                    expect(actualValue).to.equal(expectedText);
                });
            });
    }

    const loopCheck = () => {
        cy.xpath('(//table)[last()]//tr[last()]//td[1]').invoke('text').then((rowNumber) => {
            previousMaxRow = rowNumber;
            cy.log(`Number of rows is: ${previousMaxRow}`);
            checkEachCellByColumn(expectedText, columnName);
            cy.xpath('(//table[@role="table"])[last()]//tbody/tr[last()]').scrollIntoView();
            cy.wait(300);
            cy.xpath('(//table)[last()]//tr[last()]//td[1]').invoke('text').then((newRowNumber) => {
                newMaxRow = newRowNumber;
                if (newMaxRow === previousMaxRow) {
                    cy.log("**HAVE A GREAT DAY !**");
                    return;
                }
                loopCheck();
            });
        });
    };
    loopCheck();
}

export function checkFieldContainsCellInputText(xpath: any) {
    const element = getLocator(xpath);
    cy.get('@copyRef').then((copyRef) => {
        cy.xpath(element).should('have.text', copyRef);
    });
}

export function copyCreditReference(xpath: any) {
    const element = getLocator(xpath);
    cy.xpath(element).invoke('text').then((notificationText) => {
        const referenceNumber = notificationText.split("LO-")[1];
        cy.wrap(referenceNumber).as('copyRef');
    });
}

export function checkFieldContainsCellInputValue(xpath: any) {
    const element = getLocator(xpath);
    cy.get('@copyRef').then((copyRef) => {
        cy.xpath(element).should('have.value', copyRef);
    });
}

export function elementObjectVisible(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).should("be.visible");
    } else {
        cy.get(element).should("be.enabled");
    }
}

export function compareElementsValues(xpath1: any, xpath2: any) {
    const firstElement = getLocator(xpath1);
    const secondElement = getLocator(xpath2);
    cy.xpath(firstElement).invoke('val').as('firstValue');
    cy.xpath(secondElement).invoke('val').as('secondValue');
    cy.get('@firstValue').then((firstValue) => {
        cy.get('@secondValue').then((secondValue) => {
            expect(secondValue).to.eq(firstValue);
        });
    });
}

export function checkObjectEnabled(xpath: any) {
    const el = getLocator(xpath);
    if (el.includes("//")) {
        cy.xpath(el).should("be.enabled");
    } else {
        cy.get(el).should("be.enabled");
    }
}

export function checkObjectDisabled(xpath: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).should("be.disabled");
    } else {
        cy.get(element).should("be.disabled");
    }
}

export function sendKeyEnter(xpath: any, key: any) {
    const element = getLocator(xpath);
    if (element.includes("//")) {
        cy.xpath(element).type(key, { force: true })
            .type('{enter}');
    } else {
        cy.get(element).type(key, { force: true })
            .type('{enter}');
    }
}
