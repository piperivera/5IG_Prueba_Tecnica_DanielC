document.addEventListener("DOMContentLoaded", () => {
  const userList = document.getElementById("userList");
  const loader = document.getElementById("loader");

  fetch("https://jsonplaceholder.typicode.com/users")
    .then(res => res.json())
    .then(users => {
      loader.style.display = "none";

      users.forEach(user => {
        const div = document.createElement("div");
        div.className = "col-md-6 col-lg-4";

        div.innerHTML = `
          <div class="card h-100 shadow-sm p-3">
            <div class="card-body">
              <h5 class="card-title">${user.name}</h5>
              <h6 class="card-subtitle mb-2">${user.email}</h6>
              <p class="card-text">
                Empresa: ${user.company.name}<br />
                Tel: ${user.phone}<br />
                Ciudad: ${user.address.city}
              </p>
            </div>
          </div>
        `;

        userList.appendChild(div);
      });
    })
    .catch(error => {
      loader.textContent = "Error al cargar usuarios.";
      console.error(error);
    });
});
