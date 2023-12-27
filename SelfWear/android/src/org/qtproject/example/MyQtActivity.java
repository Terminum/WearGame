package org.qtproject.qt5.android.bindings;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.WindowManager;
import org.qtproject.qt.android.bindings.QtActivity;
import org.qtproject.qt.android.QtNative;

public class MyQtActivity extends QtActivity { // QtActivity
        @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        // Перехватываем событие свайпа слева направо
        if (event.getAction() == MotionEvent.ACTION_MOVE && event.getX() > 0) {
            // Возвращаем true, чтобы предотвратить передачу события выше по цепочке
            //System.out.println("Swipe Right Block!!!!!!!!!!!!!!!!!!!!!!!!!");
            return true;
        }
        return super.dispatchTouchEvent(event);
    }

}

