import { Application } from "@hotwired/stimulus"
import BookingController from "./controllers/booking_controller"

const application = Application.start()

application.register("booking", BookingController)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
