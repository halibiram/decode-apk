package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcdv;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzs extends FrameLayout implements View.OnClickListener {
    private final ImageButton zza;
    private final zzae zzb;

    public zzs(Context context, zzr zzrVar, @Nullable zzae zzaeVar) {
        super(context);
        zzq zzqVar;
        this.zzb = zzaeVar;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.zza = imageButton;
        zzc();
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        zzay.zzb();
        int zzx = zzcdv.zzx(context, zzrVar.zza);
        zzay.zzb();
        int zzx2 = zzcdv.zzx(context, 0);
        zzay.zzb();
        int zzx3 = zzcdv.zzx(context, zzrVar.zzb);
        zzay.zzb();
        imageButton.setPadding(zzx, zzx2, zzx3, zzcdv.zzx(context, zzrVar.zzc));
        imageButton.setContentDescription(new ObfuscatedString(new long[]{-91922680488155875L, 3448672182756292523L, 3820291127991492138L, -8542612058367443827L, 9176125856346228379L}).toString());
        zzay.zzb();
        int zzx4 = zzcdv.zzx(context, zzrVar.zzd + zzrVar.zza + zzrVar.zzb);
        zzay.zzb();
        addView(imageButton, new FrameLayout.LayoutParams(zzx4, zzcdv.zzx(context, zzrVar.zzd + zzrVar.zzc), 17));
        long longValue = ((Long) zzba.zzc().zza(zzbgc.zzbc)).longValue();
        if (longValue <= 0) {
            return;
        }
        if (((Boolean) zzba.zzc().zza(zzbgc.zzbd)).booleanValue()) {
            zzqVar = new zzq(this);
        } else {
            zzqVar = null;
        }
        imageButton.setAlpha(0.0f);
        imageButton.animate().alpha(1.0f).setDuration(longValue).setListener(zzqVar);
    }

    private final void zzc() {
        String str = (String) zzba.zzc().zza(zzbgc.zzbb);
        if (PlatformVersion.isAtLeastLollipop() && !TextUtils.isEmpty(str) && !new ObfuscatedString(new long[]{9092571097442258529L, 5431115410990024232L}).toString().equals(str)) {
            Resources zze = com.google.android.gms.ads.internal.zzt.zzo().zze();
            if (zze != null) {
                Drawable drawable = null;
                try {
                    if (new ObfuscatedString(new long[]{5358977249198660553L, -2578715663841057638L}).toString().equals(str)) {
                        drawable = zze.getDrawable(R.drawable.admob_close_button_white_circle_black_cross);
                    } else if (new ObfuscatedString(new long[]{6907104357522418983L, -3134546344721049927L}).toString().equals(str)) {
                        drawable = zze.getDrawable(R.drawable.admob_close_button_black_circle_white_cross);
                    }
                } catch (Resources.NotFoundException unused) {
                    zzcec.zze(new ObfuscatedString(new long[]{8559989177971964987L, 967309196267165275L, -1713856336196997928L, -889016774326335454L, -4679477381850311349L, -1243073943288535676L, -9108709965184377515L, -3080939134803078819L, -2078457711135650782L}).toString());
                }
                if (drawable == null) {
                    this.zza.setImageResource(android.R.drawable.btn_dialog);
                    return;
                } else {
                    this.zza.setImageDrawable(drawable);
                    this.zza.setScaleType(ImageView.ScaleType.CENTER);
                    return;
                }
            }
            this.zza.setImageResource(android.R.drawable.btn_dialog);
            return;
        }
        this.zza.setImageResource(android.R.drawable.btn_dialog);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzae zzaeVar = this.zzb;
        if (zzaeVar != null) {
            zzaeVar.zzj();
        }
    }

    public final void zzb(boolean z) {
        if (z) {
            this.zza.setVisibility(8);
            if (((Long) zzba.zzc().zza(zzbgc.zzbc)).longValue() > 0) {
                this.zza.animate().cancel();
                this.zza.clearAnimation();
                return;
            }
            return;
        }
        this.zza.setVisibility(0);
    }
}
