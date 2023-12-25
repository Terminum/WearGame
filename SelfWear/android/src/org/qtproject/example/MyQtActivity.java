package org.qtproject.qt5.android.bindings;

import android.os.Bundle;
import android.view.WindowManager;
import org.qtproject.qt.android.bindings.QtActivity;
import org.qtproject.qt.android.QtNative;

import android.content.Context;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public class MyQtActivity extends QtActivity { // QtActivity

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
	System.out.println("On Created!!!!!!!!!!!!!!!!!!!!!!!!!");
        // Отключение жеста "android:windowSwipeToDismiss"
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD);
    }
    
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        // Переопределение жеста свайпа
        switch (event.getAction()) {
            case MotionEvent.ACTION_DOWN:
                // Обработка начала свайпа
                System.out.println("Start Swipe Right!!!!!!!!!!!!!!!!!!!!!!!!!");
                break;
            case MotionEvent.ACTION_MOVE:
                // Обработка движения при свайпе
                System.out.println("Swipe Right!!!!!!!!!!!!!!!!!!!!!!!!!");
                break;
            case MotionEvent.ACTION_UP:
                // Обработка завершения свайпа
                System.out.println("End Swipe Right!!!!!!!!!!!!!!!!!!!!!!!!!");
                break;
        }
        return super.onTouchEvent(event);
    }
    
        @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        // Перехватываем событие свайпа слева направо
        if (event.getAction() == MotionEvent.ACTION_MOVE && event.getX() > 0) {
            // Возвращаем true, чтобы предотвратить передачу события выше по цепочке
            System.out.println("Swipe Right Block!!!!!!!!!!!!!!!!!!!!!!!!!");
            return true;
        }
        return super.dispatchTouchEvent(event);
    }

//    public void onSwipeRight() {
	//    System.out.println("Swipe Right!!!!!!!!!!!!!!!!!!!!!!!!!");
        // Whatever
    //}
    //setOnKeyListener { v, keyCode, event ->
    //    if (keyCode == KeyEvent.KEYCODE_BACK) {
    //        System.out.println("Hardware Back Clicked!")
    //    }
  //      true // If this is true then it will not send to onBackPressed() otherwise it will send
//    }
}

