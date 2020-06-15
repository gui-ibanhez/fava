const gera_troco = function(){
    const pagamento = document.getElementById('pdv_pagamento')
                        .childNodes[0].childNodes[0]; 
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
    const pagamento = document.getElementById('pdv_pagamento')
                                    .childNodes[0].childNodes[0];
    pagamento.addEventListener('keyup', (event)=>{
        if (event.keyCode === 13) {
            gera_troco();
        }
    })    
});
