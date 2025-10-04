package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcvt extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {
    private final Context zza;
    private View zzb;

    private zzcvt(Context context) {
        super(context);
        this.zza = context;
    }

    public static zzcvt zza(Context context, View view, zzfgm zzfgmVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzcvt zzcvtVar = new zzcvt(context);
        if (!zzfgmVar.zzv.isEmpty() && (resources = zzcvtVar.zza.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            float f = ((zzfgn) zzfgmVar.zzv.get(0)).zza;
            float f2 = displayMetrics.density;
            zzcvtVar.setLayoutParams(new FrameLayout.LayoutParams((int) (f * f2), (int) (r2.zzb * f2)));
        }
        zzcvtVar.zzb = view;
        zzcvtVar.addView(view);
        com.google.android.gms.ads.internal.zzt.zzx();
        zzcfc.zzb(zzcvtVar, zzcvtVar);
        com.google.android.gms.ads.internal.zzt.zzx();
        zzcfc.zza(zzcvtVar, zzcvtVar);
        JSONObject jSONObject = zzfgmVar.zzai;
        RelativeLayout relativeLayout = new RelativeLayout(zzcvtVar.zza);
        JSONObject optJSONObject = jSONObject.optJSONObject(new ObfuscatedString(new long[]{-8120321573510002850L, -8035562014808500383L}).toString());
        if (optJSONObject != null) {
            zzcvtVar.zzc(optJSONObject, relativeLayout, 10);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject(new ObfuscatedString(new long[]{9144304075101070968L, -3183978716205686253L}).toString());
        if (optJSONObject2 != null) {
            zzcvtVar.zzc(optJSONObject2, relativeLayout, 12);
        }
        zzcvtVar.addView(relativeLayout);
        return zzcvtVar;
    }

    private final int zzb(double d) {
        com.google.android.gms.ads.internal.client.zzay.zzb();
        return zzcdv.zzx(this.zza, (int) d);
    }

    private final void zzc(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.zza);
        textView.setTextColor(-1);
        textView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setGravity(17);
        textView.setText(jSONObject.optString(new ObfuscatedString(new long[]{7919030063094350177L, -9111151682234896188L}).toString(), new ObfuscatedString(new long[]{-1652822928450196415L}).toString()));
        textView.setTextSize((float) jSONObject.optDouble(new ObfuscatedString(new long[]{9190275462431759181L, 748720490665967021L, 8798963336415075163L}).toString(), 11.0d));
        int zzb = zzb(jSONObject.optDouble(new ObfuscatedString(new long[]{-5487765813669286606L, -4814350034622218961L}).toString(), 0.0d));
        textView.setPadding(0, zzb, 0, zzb);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, zzb(jSONObject.optDouble(new ObfuscatedString(new long[]{3693663041817215370L, -9117104851239380327L}).toString(), 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        getLocationInWindow(new int[2]);
        this.zzb.setY(-r0[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        getLocationInWindow(new int[2]);
        this.zzb.setY(-r0[1]);
    }
}
