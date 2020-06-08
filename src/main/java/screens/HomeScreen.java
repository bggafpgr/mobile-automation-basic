package screens;

import general.AppiumElement;
import general.ScreenManager;
import io.appium.java_client.AppiumDriver;

import static general.Logger.info;

public class HomeScreen extends BaseScreen {
  // Constructor
  public HomeScreen(AppiumDriver driver) {
    super(driver);
    addElement("ebayLogo", "id", "logo");
    addElement("searchBox", "id", "search_box");
    addElement("progressBar", "id", "translucent_progress_bar");
    addElement("stackButton", "id", "home");
    addElement("categories", "id", "menuitem_categories");
    addElement("register", "id", "button_register");
    addElement("settings", "id", "menuitem_settings");
    addElement("countryOrRegion", "xpath", "//*[@text='Country or region']");
    addElement("switchWidget", "id", "switchWidget");
    addElement("unitedStates", "xpath", "//*[@text='United States']");
    addElement("searchField", "id", "filter");
    addElement("sweden", "xpath", "//*[@text='Sweden']");
    addElement("switzerland", "xpath", "//*[@text='Switzerland']");
  }
  // Base Methods
  @Override
  public AppiumElement getMainElement(){
    return getElement("ebayLogo");
  }

  public void searchFor(String string){
    info("Searching for '" + string + "'");
    getElement("searchField").find(getTimeout()).sendKeys(string);
  }

  @Override
  public void navigate(String element){
    switch (element){
      case "searchBox" : ScreenManager.setCurrentPage(ScreenManager.getSearchScreen());break;
      case "categories": ScreenManager.setCurrentPage(ScreenManager.getCategoriesScreen()); break;
      case "register"  : ScreenManager.setCurrentPage(ScreenManager.getCreateAnAccountScreen()); break;
      default          : super.navigate(element);
    }
  }
}
