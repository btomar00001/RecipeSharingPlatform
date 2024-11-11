document.addEventListener("DOMContentLoaded", function () {
    const registerForm = document.getElementById("registerForm");
    const loginForm = document.getElementById("loginForm");

    if (registerForm) {
        registerForm.addEventListener("submit", function (event) {
            const password = document.getElementById("password").value;
            if (password.length < 6) {
                alert("Password must be at least 6 characters long.");
                event.preventDefault();
            }
        });
    }

    if (loginForm) {
        loginForm.addEventListener("submit", function (event) {
            const email = document.getElementById("email").value;
            if (!validateEmail(email)) {
                alert("Please enter a valid email address.");
                event.preventDefault();
            }
        });
    }
});

function validateEmail(email) {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return re.test(email);
}
