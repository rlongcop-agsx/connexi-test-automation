*** Settings ***
Resource                               privateCredentials.robot

*** Variables ***
${BROWSER}=                            Edge

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

${FORECAST_PAGE}=                      ${TABLEAU_URL}/#forecasting_dashboard
${SUPPLYPLANNING_PAGE}=                ${TABLEAU_URL}/#supply_planning_dashboard
${ANALYTICS_PAGE}=                     ${TABLEAU_URL}/#analytics_dashboard


# EMAILS
${FORECASTING_EMAIL}=                  ${FORECASTING}
${SUPPLYPLAN_EMAIL}=                   ${SUPPLYPLAN}
${ORDERING_EMAIL}=                     ${ORDERING}
${PROCUREMENT_EMAIL}=                  ${PROCUREMENT}
${PROCUREMENTSP_EMAIL}=                ${PROCUREMENTSP}
${VENDOR_EMAIL}=                       ${VENDOR}
${INVENTORY_EMAIL}=                    ${INVENTORY}
${QUALITYMANAGEMENT_EMAIL}=            ${QUALITYMANAGEMENT}
${ANALYTICS_EMAIL}=                    ${ANALYTICS}

${VALID_PASSWORD}=                     password