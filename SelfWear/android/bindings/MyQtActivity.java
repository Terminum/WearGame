package org.qtproject.qt5.android.bindings;

import android.os.Bundle;
import android.view.WindowManager;

public class MyQtActivity extends QtActivity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Отключение жеста "android:windowSwipeToDismiss"
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD);
    }
}

