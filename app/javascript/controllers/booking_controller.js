import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["box"]

  connect() {
    this.boxTarget.classList.add("hidden") // Start hidden
    this.scrollHandler = () => this.toggleVisibility()
    window.addEventListener("scroll", this.scrollHandler)
  }

  toggleVisibility() {
    const rect = this.boxTarget.getBoundingClientRect()
    if (rect.top < window.innerHeight) {
      this.boxTarget.classList.remove("hidden")
      this.boxTarget.classList.add("visible")
      // Optional: EventListener danach entfernen
      window.removeEventListener("scroll", this.scrollHandler)
    }
  }
}
