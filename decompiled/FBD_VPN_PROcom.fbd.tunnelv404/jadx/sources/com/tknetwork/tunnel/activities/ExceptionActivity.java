package com.tknetwork.tunnel.activities;

import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class ExceptionActivity extends AppCompatActivity {
    TextView error;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        setContentView(linearLayout);
        ScrollView scrollView = new ScrollView(this);
        TextView textView = new TextView(this);
        scrollView.addView(textView);
        linearLayout.addView(scrollView);
        textView.setText(getIntent().getStringExtra(new ObfuscatedString(new long[]{1914590505967884592L, -6017745262409118372L}).toString()));
    }
}
