package com.tknetwork.tunnel.activities;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.tknetwork.tunnel.logger.JcLogs;

/* loaded from: classes3.dex */
public class CustomPagerAdapter extends ActivityUi {
    private final Context context;

    public CustomPagerAdapter(Context context) {
        this.context = context;
    }

    public View getView() {
        new View.OnClickListener() { // from class: com.tknetwork.tunnel.activities.CustomPagerAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                onClick();
            }

            public void onClick() {
                Intent intent = new Intent(CustomPagerAdapter.this.context, (Class<?>) JcLogs.class);
                intent.toString();
                CustomPagerAdapter.this.context.startActivity(intent);
            }
        };
        throw null;
    }
}
