import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["schoolSelect", "klassSelect"];

  connect() {
    this.schoolSelectTarget = document.getElementById("school-select");
    this.klassSelectTarget = document.getElementById("klass-select");

    this.schoolSelectTarget.addEventListener("change", (event) => this.updateKlasses(event));
  }

  updateKlasses(event) {
    const schoolId = event.target.value;

    fetch(`/schools/${schoolId}/klasses`)
      .then((response) => response.json())
      .then((data) => {
        this.klassSelectTarget.innerHTML = ""; // Очищаем текущие опции
        data.forEach((klass) => {
          const option = document.createElement("option");
          option.value = klass.id;
          option.textContent = `${klass.number} ${klass.letter}`;
          this.klassSelectTarget.appendChild(option);
        });
      });
  }
}
