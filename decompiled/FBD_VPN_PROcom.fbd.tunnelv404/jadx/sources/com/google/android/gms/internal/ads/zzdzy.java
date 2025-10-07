package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdzy {
    public static final void zza(Context context, ViewGroup viewGroup, AdView adView) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setTag(new ObfuscatedString(new long[]{6433366396727928325L, 3225065280056062191L}).toString());
        zzf(linearLayout, -1, -1);
        linearLayout.setGravity(17);
        linearLayout.addView(adView);
        adView.setTag(new ObfuscatedString(new long[]{7439530859392507306L, -1853642895693708634L}).toString());
        viewGroup.addView(linearLayout);
    }

    public static final void zzb(Context context, ViewGroup viewGroup, NativeAd nativeAd) {
        String string;
        String string2;
        String string3;
        NativeAdView nativeAdView = new NativeAdView(context);
        nativeAdView.setTag(new ObfuscatedString(new long[]{9081080320608579214L, 2427691488418021966L, -3532255846539532164L}).toString());
        zzf(nativeAdView, -1, -1);
        viewGroup.addView(nativeAdView);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setTag(new ObfuscatedString(new long[]{891272619834885873L, 1062801651364425511L, -6389934778367900834L}).toString());
        linearLayout.setOrientation(1);
        zzf(linearLayout, -1, -1);
        linearLayout.setBackgroundColor(-1);
        nativeAdView.addView(linearLayout);
        Resources zze = com.google.android.gms.ads.internal.zzt.zzo().zze();
        if (zze == null) {
            string = new ObfuscatedString(new long[]{-7208996431928527087L, 3279077986945219203L}).toString();
        } else {
            string = zze.getString(R.string.native_headline);
        }
        linearLayout.addView(zzc(context, string, new ObfuscatedString(new long[]{8320504843330383470L, -4917249521985826908L, -6793258344935525190L, 8729646248314209323L}).toString()));
        View zzd = zzd(context, zzfxt.zzc(nativeAd.getHeadline()), new ObfuscatedString(new long[]{-407795757051874440L, -6249862929598320145L, 3302060576575136349L}).toString());
        nativeAdView.setHeadlineView(zzd);
        linearLayout.addView(zzd);
        if (zze == null) {
            string2 = new ObfuscatedString(new long[]{3389345925587756304L, -7701590044330992577L}).toString();
        } else {
            string2 = zze.getString(R.string.native_body);
        }
        linearLayout.addView(zzc(context, string2, new ObfuscatedString(new long[]{-5669883722721805879L, 7290976796697585056L, -385467355073156106L}).toString()));
        View zzd2 = zzd(context, zzfxt.zzc(nativeAd.getBody()), new ObfuscatedString(new long[]{5947579505516837666L, -8440506818820513422L}).toString());
        nativeAdView.setBodyView(zzd2);
        linearLayout.addView(zzd2);
        if (zze == null) {
            string3 = new ObfuscatedString(new long[]{7697668629931764172L, 4323635325971756870L, 472520885192836626L}).toString();
        } else {
            string3 = zze.getString(R.string.native_media_view);
        }
        linearLayout.addView(zzc(context, string3, new ObfuscatedString(new long[]{6680187193140924139L, -303061248797214202L, -2005356882608095527L, 1739843187110063862L}).toString()));
        MediaView mediaView = new MediaView(context);
        mediaView.setTag(new ObfuscatedString(new long[]{-8622182049703960765L, 113158756703311243L, 5485761891848472879L}).toString());
        nativeAdView.setMediaView(mediaView);
        linearLayout.addView(mediaView);
        nativeAdView.setNativeAd(nativeAd);
    }

    private static TextView zzc(Context context, String str, String str2) {
        return zze(context, str, android.R.style.TextAppearance.Small, -9210245, 0.0f, str2);
    }

    private static TextView zzd(Context context, String str, String str2) {
        return zze(context, str, android.R.style.TextAppearance.Medium, ViewCompat.MEASURED_STATE_MASK, 12.0f, str2);
    }

    private static TextView zze(Context context, String str, int i, int i2, float f, String str2) {
        TextView textView = new TextView(context);
        textView.setTag(str2);
        zzf(textView, -2, -2);
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new TableRow.LayoutParams();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(layoutParams);
        marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, f, textView.getResources().getDisplayMetrics());
        textView.setLayoutParams(marginLayoutParams);
        textView.setTextAppearance(context, i);
        textView.setTextColor(i2);
        textView.setText(str);
        return textView;
    }

    private static void zzf(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new TableRow.LayoutParams();
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams);
        layoutParams2.height = i;
        layoutParams2.width = i2;
        view.setLayoutParams(layoutParams2);
    }
}
