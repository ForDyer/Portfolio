import { DataTable, Given, Then, When } from "@badeball/cypress-cucumber-preprocessor";
import * as comFun from "./commonFun";

Given("Visit {string} page", (url: string) => {
    comFun.navigate(url);
});

Given("Visit {string} link", (url: string) => {
    comFun.navigateWithLink(url);
});

Then("Wait until {string} is visible", (text: string) => {
    comFun.waitUntilVisible(text);
});

Then("Wait until {string} is invisible", (text: string) => {
    comFun.waitUntilInVisible(text);
});

Then("Write {string} in field {string}", (key, xpath) => {
    comFun.sendKey(xpath, key);
});

Then("Write {string} in field {string} from data", (key, xpath) => {
    comFun.sendKeyFromData(xpath, key);
});

Then("Write random text in field {string}", (xpath: string) => {
    comFun.sendRandomKey(xpath);
});

Then("Write exist random text in field {string}", (xpath: string) => {
    comFun.writeExistRandomKey(xpath);
});

Then("If field is exist write {string} in field {string}", (key, xpath) => {
    comFun.sendKeyIfExist(xpath, key);
});

Then("Write {string} slowly in field {string}", (key, xpath) => {
    comFun.sendKeySlowly(xpath, key);
});

Then("Click on the {string} object on the page", (text: string) => {
    comFun.clickElementByText(text);
});

Then("Click on object {string}", (xpath: string) => {
    comFun.click(xpath);
});

Then("Double click on object {string}", (xpath: string) => {
    comFun.doubleClick(xpath);
});

Then("Right click on object {string}", (xpath: string) => {
    comFun.rightClick(xpath);
});

Then("If object is exist then click on object {string}", (xpath: string) => {
    comFun.clickIfExist(xpath);
});

Then("Clear in field {string}", (xpath: string) => {
    comFun.clear(xpath);
});

Then("Press the {string} key on the {string} field", (key, xpath) => {
    comFun.clickOnElementByKeyboardKey(key, xpath);
});

Then("Press the {string} and {string} key on the {string} field",
    (key1: string, key2: string, xpath: string) => {
        comFun.clickOnElementByKeyboardTwoKey(key1, key2, xpath);
    }
);

Then("Check {string} object has {string} text", (xpath, text) => {
    comFun.containsText(xpath, text);
});

Then("Check {string} is visible", (text: string) => {
    comFun.elementVisible(text);
});

Then("Check {string} is invisible", (text: string) => {
    comFun.elementNotVisible(text);
});

Then("Wait {int} second", (second: number) => {
    comFun.waitSecond(second);
});

Then("Focus on {string} object", (xpath: string) => {
    comFun.hoverOn(xpath);
});

Then("Check {string} object has exist random text", (xpath: string) => {
    comFun.containsExistsRandom(xpath);
});

Then("Go to previous page", () => {
    comFun.goBack();
});

Then("Select {string} value in {string} select object", (visibleText, key) => {
    comFun.selectOptions(key, visibleText);
});

Then("Value of {string} object is {string}", (xpath, val) => {
    comFun.checkElementValue(xpath, val);
});

Then("Scroll until {string} object is visible", (xpath) => {
    comFun.scrollUntilVisible(xpath);
});

Then("Select {int} index in {string} select object", (index, key) => {
    comFun.selectOptionsWithIndex(index, key);
});

Then("Refresh the page", () => {
    comFun.refreshPage();
});

Then("Check if the link of the page contains the value {string}", (text) => {
    comFun.linkContains(text);
});

Then("Select {string} value from the list", (listValue) => {
    comFun.selectElementFromList(listValue);
});

Then("Select third element from the {string} list", (key) => {
    comFun.selectThirdElementFromList(key);
});

Then("Save {string} object text as {string}", (xpath, valName) => {
    comFun.saveElementText(xpath, valName);
});

Then("Compare {string} object text as {string}", (xpath, valName) => {
    comFun.compareElementText(xpath, valName);
});

When("Click all text and wait", (dataTable: DataTable) => {
    dataTable.hashes().forEach((element) => {
        comFun.clickElementByText(element.Item);
        comFun.waitSecond(Number(element.Second));
    });
});

When("Click item and check text", (dataTable: DataTable) => {
    dataTable.hashes().forEach((element) => {
        comFun.clickElementByText(element.Item);
        comFun.elementVisible(element.Text);
    });
});

Then("Check radio-button {string} is checked", (xpath) => {
    comFun.checkIsChecked(xpath);
});

Then("Check {string} is present in {string}", (expectedValue, xPath) => {
    comFun.checkElementValue(expectedValue, xPath);
});

Then("Check radio-button {string} is not checked", (xpath) => {
    comFun.checkIsNotChecked(xpath);
});

Then("Save {string} object text as {string}", (xpath, text) => {
    comFun.saveElementText(xpath, text);
});

Then("Copy PO reference number from the {string} notification", (xpath) => {
    comFun.copyPoReference(xpath);
});

Then("Copy WF reference number from the {string} notification", (xpath) => {
    comFun.copyWfReference(xpath);
});

Then("Paste the copied reference number to {string} field", (xpath) => {
    comFun.writeCopiedReference(xpath);
});

Then("Check element {string} is exist", (key) => {
    comFun.checkElementExist(key);
});

Then("Check element {string} is not exist", (xpath) => {
    comFun.checkElementNotExist(xpath);
});

Then("Check element {string} is empty", (key) => {
    comFun.checkElementIsEmpty(key);
});

Then("Check {string} object text is {string}", (xpath, text) => {
    comFun.checkElementText(xpath, text);
});

Then("Select {string} in dropdown {string}", (text, xpath) => {
    comFun.selectText(xpath, text);
});

Then("Check field {string} has value {string}", (xpath, text) => {
    comFun.fieldValue(xpath, text);
});

Then("Copy cell input {string} from the table", (xpath) => {
    comFun.copyCellInput(xpath);
});

Given("Log in as {string} with password {string}", (key1: any, key2: any) => {
    comFun.loginWithUsername(key1, key2);
});

Then("Double click on text of {string}", (xpath) => {
    comFun.doubleClickText(xpath);
});

Then("Table contains only {string} in column {string}", (expectedText, columnName) => {
    comFun.tableColumnContainsText(expectedText, columnName);
});

Then("Check {string} field contains cell input text", (xpath) => {
    comFun.checkFieldContainsCellInputText(xpath);
});

Then("Check {string} field contains cell input value", (xpath) => {
    comFun.checkFieldContainsCellInputValue(xpath);
});

Then("Copy Credit reference number from the {string} element", (xpath) => {
    comFun.copyCreditReference(xpath);
});

Then("Check {string} object is visible", (xpath: string) => {
    comFun.elementObjectVisible(xpath);
});

Then("Compare element values {string} to {string}", (xpath1, xpath2) => {
    comFun.compareElementsValues(xpath1, xpath2);
});

Then("Check {string} object is enabled", (xpath: string) => {
    comFun.checkObjectEnabled(xpath);
});

Then("Check {string} object is disabled", (xpath: string) => {
    comFun.checkObjectDisabled(xpath);
});

Then("Write {string} in field {string} and hit Enter", (key, xpath) => {
    comFun.sendKeyEnter(xpath, key);
});