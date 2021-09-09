package lippiaTaller.web.steps;

import com.crowdar.core.PageSteps;
import io.cucumber.java.en.*;
import lippiaTaller.web.services.LippiaTallerService;

public class LippiaTallerSteps extends PageSteps {

    @Given("Estamos en la pagina de Compras")
    public void estamosEnLaPaginaDeCompras() {
        LippiaTallerService.navegarWeb();
    }

    @When("seleccionamos del menu '(.*)' - '(.*)' - '(.*)'")
    public void seleccionamosDelMenu(String menu, String subMenu1, String subMenu2) {
        LippiaTallerService.navegarMenu(menu,subMenu2);
    }

    @Then("se visualiza el menu de las secciones navegadas '(.*)'")
    public void seVisualizaElMenuDeLasSeccionesNavegadas(String navegacion) {
        LippiaTallerService.verificarNavegacion(navegacion);
    }

}
