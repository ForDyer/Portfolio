/// <reference types="Cypress"/>

describe('dmsLogin And Dashboard Tests', () => {
  const dmsLoginURL = 'test link';
  const dmsDashBrdURL = 'test link';
  
  beforeEach(() => {
    cy.visit(dmsLoginURL);
    cy.wait(2000);
    cy.get('.font-semibold.text-4xl').should('contain', 'Distribution Management System');

    cy.get('#username').should('be.visible').type('dms');
    cy.get('input[name="password"]').should('be.visible').type('dms');
    cy.contains('Login').click();
    cy.wait(5000);
    cy.url().should('eq', dmsDashBrdURL);
    cy.get('div[role=toolbar]').should('contain', 'My last 7 days bundles');
  });

});