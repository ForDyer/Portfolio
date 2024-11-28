

describe('CORE+ Approvals Tab', () => {
  corepLoginURL = 'test link';
  corepLogin = 'login';
  corepPass = 'pass';

  beforeEach(() => {
    cy.visit(corepLoginURL);
    cy.wait(2000);
    cy.get('.font-semibold.text-4xl').should('contain', 'CORE BANKING LOGIN');
    cy.get('input[name="password"]').type(corepPass);
    cy.get('.p-button-label.p-c').click();
    cy.wait(2000);
    cy.get('.p-menuitem-text').should('contain', 'Dashboard');
  });

  it('Access Approvals page and search by product, date, amount', () => {
    cy.get('li:nth-child(1) div:nth-child(1)').click();
    cy.get('.p-panelmenu-header-link[href="cb-urn-product/PRD82348"]').click();
    cy.get('.p-fluid.col-12.text-center.pt-2').should('be.visible');
    cy.get('input[placeholder="dd/mm/yyyy"][name="startDate"]').type('012022014', {delay: 100});
    cy.get('input[placeholder="dd/mm/yyyy"][name="endDate"]').type('012022018', {delay: 100});
    cy.xpath('//input[@name="startAmount"]').clear().type('143.25');
    cy.xpath('//input[@name="startAmount"]').clear().type('14300.25');
    cy.get('#productCode').click();
    cy.get('li[aria-label="OUTGOING SWIFT"]').click();
    cy.xpath('//span[normalize-space()="Inquiry"]').click();
    
  });

});