static public class Keyboard {
 
    private static boolean[] keys = new boolean[128];
    private static boolean[] pKeys = new boolean[128];
    public static final int LEFT = 37;
    public static final int RIGHT = 39;
    public static final int SPACE = 32;
    public static final int UP = 38;
    public static final int P = 80;
    public static final int Q = 81;
    public static final int S = 83;
    public static final int W = 87;
    public static final int A = 65;
    public static final int D = 68;
    public static final int DOWN = 40;
    
    public static void update() {
      // Update the state of all keys in the previous frame to the state in the current frame.
      for(int i = 0; i < keys.length; i++) {
        pKeys[i] = keys[i];
      }
    }
    
    private static void handleKey(int code, boolean isDown){
      keys[code] = isDown;    
    }
    
    public static boolean isDown(int code){
      return keys[code];
    }
    
    public static boolean onDown(int code){
      return (keys[code] && !pKeys[code]);
    }
    
    public static void handleKeyDown(int code){
      handleKey(code,true);
    }
    
    public static void handleKeyUp(int code){
      handleKey(code, false);
    }
}
