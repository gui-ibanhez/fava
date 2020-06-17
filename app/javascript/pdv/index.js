const gera_troco = function(){
    const pagamento = document.getElementById('pdv_pagamento');
    const troco = document.getElementById('pdv_troco').childNodes[0];
    const total = document.getElementById('pdv_total').childNodes[0];
    troco.innerText = parseFloat(pagamento.value) - parseFloat(total.textContent)
};

window.addEventListener('DOMContentLoaded', (event) => {
    document.getElementById('pdv_product_list').addEventListener('DOMSubtreeModified', ()=>{
        let total = document.getElementById('pdv_total')
        let elements = document.getElementsByClassName('subtotal')
        let value = 0
        for(e of elements){
            value += parseFloat(e.textContent)
        }
        total.childNodes[0].innerText = value
    })    
});

window.addEventListener('DOMContentLoaded', (event) => {
    const pagamento = document.getElementById('pdv_pagamento');
    pagamento.addEventListener('keyup', (event)=>{
        if (event.keyCode === 13) {
            gera_troco();
        }
    })    
});

window.addEventListener('DOMContentLoaded', ()=> {
    const finish = document.getElementById('pdv_finish') 
    finish.addEventListener('click', () => {
        const data = {order: {}, order_items: {}};
        const payment = document.getElementById('payment')
        const origin = document.getElementById('payment')
        const request_ahead = document.getElementById('pdv_request_ahead')

        data['order']['customer_id'] = document.getElementById('customer').value;
        data['order']['value'] = document.getElementById('pdv_total').textContent;
        data['order']['payment'] = payment.item(payment.selectedIndex).textContent;
        data['order']['origin'] = origin.item(origin.selectedIndex).textContent;
        data['order']['request_ahead'] = request_ahead.checked ? true : false

        data['']['']

    })
})
