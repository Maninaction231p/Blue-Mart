// Sample Product Data
var products = [
    { id: 1, name: 'Apple iPad (10th generation): with A14 Bionic chip, 27.69 cm', price: 10000, image: 'https://m.media-amazon.com/images/I/61uA2UVnYWL._SX679_.jpg',rating: 3.4 },
    { id: 2, name: 'Apple 2024 MacBook Air 13″ Laptop with M3 chip: 34.46 cm (13.6″) Liquid Retina Display, 8GB Unified Memory, 256GB SSD Storage, Backlit Keyboard, 1080p FaceTime HD Camera, Touch ID- Silver', price: 150000, image: 'https://m.media-amazon.com/images/I/71WkDp--uqL._SX679_.jpg' ,rating: 3.4},
    { id: 3, name: 'Apple iPhone 15 Pro (128 GB) - Blue Titanium', price: 150000, image: 'https://m.media-amazon.com/images/I/81SigpJN1KL._SX679_.jpg' ,rating: 3.4 },
    { id: 2, name: 'Apple 2024 MacBook Air 13″ Laptop with M3 chip: 34.46 cm (13.6″) Liquid Retina Display, 8GB Unified Memory, 256GB SSD Storage, Backlit Keyboard, 1080p FaceTime HD Camera, Touch ID- Silver', price: 150000, image: 'https://m.media-amazon.com/images/I/71WkDp--uqL._SX679_.jpg' ,rating: 3.4},
    { id: 2, name: 'Apple 2024 MacBook Air 13″ Laptop with M3 chip: 34.46 cm (13.6″) Liquid Retina Display, 8GB Unified Memory, 256GB SSD Storage, Backlit Keyboard, 1080p FaceTime HD Camera, Touch ID- Silver', price: 150000, image: 'https://m.media-amazon.com/images/I/71WkDp--uqL._SX679_.jpg' ,rating: 3.4},
    { id: 4, name: 'AirPods Pro (2nd generation)', price: 21990.00, image: 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcScw1SYoUz-zwuew2XeSDNECo1ZLkV93IGeAlvIBMxVCdl6FcgHmdNjTc7a0zZIZiyVkHUN5GypdmegfvKJnoRADKNkyTMtGl1tjZ2f4RQDjUs_YvHYoPlgxw&usqp=CAE' ,rating: 3.9}
];

// Function to Display Products
function displayProducts() {


    var productContainer = document.getElementById('product-list');
    if (productContainer) {
        productContainer.innerHTML = '';
        products.forEach(product => {
            var productDiv = document.createElement('div');
            productDiv.classList.add('cards');
            productDiv.classList.add('rounded');
            productDiv.classList.add('border');
            productDiv.style.width='240px';
            productDiv.style.marginRight='2rem';
            productDiv.style.marginTop='2rem';
            productDiv.innerHTML = `
                    
                    <img src="${product.image}" class="rounded-top w-100" style="opacity:08;" width="100%" alt="${product.name}">
                    <div class="top-left"><div class="py-1 border px-2 rounded d-flex" style="background-color: #00000075;   backdrop-filter: blur(36px);"><span class="material-icons star-icon pe-1">star</span><p class="p-0 m-0">${product.rating}</p></div></div>
                
                <div class="p-3">
                    <h3 class="">₹${product.price.toFixed(2)}</h3>
                    <p class=" text-truncate pro-nam ">${product.name}</p>
                    <div class="d-flex w-100 justify-content-between ">
                        <div class="w-100">
                            <button class="btn btn-outline-secondary me-lg-2 p-1 pb-0 w-20" onclick="addToCart(${product.id})"><span class="material-icons">favorite_border</span></button>
                            <button class="btn btn-primary w-75" onclick="addToCart(${product.id})">Add to Cart</button>
                        </div>
                    </div>
                </div>
       
            `;
            productContainer.appendChild(productDiv);
        });
    }
}

// Cart Management
let cart = JSON.parse(localStorage.getItem('cart')) || [];

function addToCart(id) {
    const product = products.find(prod => prod.id === id);
    cart.push(product);
    localStorage.setItem('cart', JSON.stringify(cart));
    alert('Product added to cart');
}

function displayCart() {
    const cartContainer = document.getElementById('cart-items');
    if (cartContainer) {
        cartContainer.innerHTML = '';
        cart.forEach(item => {
            const cartDiv = document.createElement('div');
            cartDiv.classList.add('cart-item');
            cartDiv.innerHTML = `
                <img src="${item.image}" alt="${item.name}">
                <h3>${item.name}</h3>
                <p>$${item.price.toFixed(2)}</p>
            `;
            cartContainer.appendChild(cartDiv);
        });
    }
}
displayProducts();

document.addEventListener('DOMContentLoaded', () => {
    displayProducts();
    displayCart();
});
