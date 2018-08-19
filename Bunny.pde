/**************** Class Bunny *****************/
class Bunny {
  private String name;

  private int x;
  private int y;
  Bunny() {
  }
  Bunny(String name, String type, int x, int y) {
    this.x=x;
    this.y=y;
    this.name = name;

    this.name = name ;
  }
  public int getXpos() {
    return x;
  }
  public int getYpos() {
    return y;
  }
  public void setName(String name) {
    this.name = name;
  }
  public void setType(String type) {
  }
  public String getName() {
    return name;
  }
}
