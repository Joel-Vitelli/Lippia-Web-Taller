package lippiaTaller.web.services;

import com.crowdar.core.PropertyManager;
import com.crowdar.core.actions.ActionManager;
import com.crowdar.driver.DriverManager;
import lippiaTaller.web.constants.LippiaTallerConstants;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;

import static com.crowdar.core.actions.WebActionManager.navigateTo;

public class LippiaTallerService extends ActionManager {

    public static void navegarWeb(){
        navigateTo(PropertyManager.getProperty("web.base.url"));
    }

    public static void navegarMenu(String subMenu1, String subMenu2){
        hoverItem(LippiaTallerConstants.SUBMENU_1_XPATH,subMenu1);
        click(LippiaTallerConstants.SUBMENU_2_XPATH,subMenu2);
    }

    public static void hoverItem(String locator, String locatorReemp){
        waitVisibility(locator,locatorReemp);
        WebElement ele = getElement(locator, locatorReemp);
        hoverItem(ele);
    }

    public static void hoverItem(WebElement ele){
        Actions action = new Actions(DriverManager.getDriverInstance());
        action.moveToElement(ele).perform();
    }

    public static void verificarNavegacion(String navegacion){
        String[] listaNavegacion = navegacion.split("Home");
        Assert.assertEquals(getText(LippiaTallerConstants.NAVEGACION_XPATH), listaNavegacion[1], "La navegación no es correcta");
    }
}
