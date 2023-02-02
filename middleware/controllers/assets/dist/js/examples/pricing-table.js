'use strict';

document.getElementById('priceChangeSwitch').addEventListener('click', function (e) {
    let period = '';

    const prices = {
        'Monthly': [49, 299],
        'Yearly': [99, 399]
    };

    if (e.target.checked) {
        period = 'Yearly';
    } else {
        period = 'Monthly';
    }

    let price_text = document.querySelectorAll('[data-plan-price]');
    for (let i = 0; i < price_text.length; i++) {
        price_text[i].innerHTML = `$` + prices[period][i];
        document.querySelectorAll('[data-plan-period]')[i].innerHTML = period;
    }
});
