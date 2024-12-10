*** Settings ***
Resource                               privateCredentials.robot

*** Variables ***
${BROWSER}=                            Edge

# URLs
${LOGIN_PAGE}=                         ${BASE_URL}

${PROCUREMENT_PAGE}=                   ${BASE_URL}/procurement
${PROCUREMENT-PO_PAGE}=                ${BASE_URL}/procurement/po-submission

${ORDERING_PAGE}=                      ${BASE_URL}/ordering
${ORDERING-CREATEORDER_PAGE}=          ${BASE_URL}/ordering/create-order
${ORDERING-PENDING_PAGE}=              ${BASE_URL}/ordering?status=PENDING
${ORDERING-COMPLETED_PAGE}=            ${BASE_URL}/ordering?status=COMPLETED

${VENDOR_PAGE}=                        ${BASE_URL}/vendor
${INVENTORY_PAGE}=                     ${BASE_URL}/inventory
${QUALITY_PAGE}=                       ${BASE_URL}/quality

${FORECAST_PAGE}=                      ${TABLEAU_URL}/forecasting
${SUPPLYPLANNING_PAGE}=                ${TABLEAU_URL}/supply-planning
${ANALYTICS_PAGE}=                     ${TABLEAU_URL}/analytics


# CREDENTIALS
${FORECASTING_EMAIL}=                  ${FORECASTING}
${Supply Planning_EMAIL}=              ${SUPPLYPLAN}
${ORDERING_EMAIL}=                     ${ORDERING}
${PROCUREMENT_EMAIL}=                  ${PROCUREMENT}
${PROCUREMENTSP_EMAIL}=                ${PROCUREMENTSP}
${VENDOR_EMAIL}=                       ${VENDOR}
${INVENTORY_EMAIL}=                    ${INVENTORY}
${QUALITYMANAGEMENT_EMAIL}=            ${QUALITYMANAGEMENT}
${ANALYTICS_EMAIL}=                    ${ANALYTICS}

${VALID_PASSWORD}=                     password