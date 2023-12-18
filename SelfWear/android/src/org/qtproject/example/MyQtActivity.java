package org.qtproject.qt5.android.bindings;

import android.os.Bundle;
import android.view.WindowManager;
import org.qtproject.qt.android.bindings.QtActivity;
import org.qtproject.qt.android.QtNative;

public class MyQtActivity extends QtActivity { // QtActivity

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
	System.out.println("On Created!!!!!!!!!!!!!!!!!!!!!!!!!");
        // Отключение жеста "android:windowSwipeToDismiss"
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD);
        
            
    }
    setOnKeyListener { v, keyCode, event ->
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            System.out.println("Hardware Back Clicked!")
        }
        true // If this is true then it will not send to onBackPressed() otherwise it will send
    }
}

