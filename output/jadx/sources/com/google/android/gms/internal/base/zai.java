package com.google.android.gms.internal.base;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zai extends Drawable implements Drawable.Callback {
    private int zaa;
    private long zab;
    private int zac;
    private int zad;
    private int zae;
    private int zaf;
    private boolean zag;
    private boolean zah;
    private zah zai;
    private Drawable zaj;
    private Drawable zak;
    private boolean zal;
    private boolean zam;
    private boolean zan;
    private int zao;

    public zai(@Nullable Drawable drawable, @Nullable Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zag.zaa : drawable;
        this.zaj = drawable;
        drawable.setCallback(this);
        zah zahVar = this.zai;
        zahVar.zab = drawable.getChangingConfigurations() | zahVar.zab;
        drawable2 = drawable2 == null ? zag.zaa : drawable2;
        this.zak = drawable2;
        drawable2.setCallback(this);
        zah zahVar2 = this.zai;
        zahVar2.zab = drawable2.getChangingConfigurations() | zahVar2.zab;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
    
        if (r0 == 0) goto L22;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void draw(Canvas canvas) {
        int i = this.zaa;
        int i2 = 0;
        boolean z = true;
        if (i != 1) {
            if (i == 2 && this.zab >= 0) {
                float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.zab)) / this.zae;
                if (uptimeMillis < 1.0f) {
                    z = false;
                }
                if (z) {
                    this.zaa = 0;
                }
                this.zaf = (int) ((this.zac * Math.min(uptimeMillis, 1.0f)) + 0.0f);
            }
        } else {
            this.zab = SystemClock.uptimeMillis();
            this.zaa = 2;
            z = false;
        }
        int i3 = this.zaf;
        boolean z2 = this.zag;
        Drawable drawable = this.zaj;
        Drawable drawable2 = this.zak;
        if (z) {
            if (!z2) {
                i2 = i3;
            }
            drawable.draw(canvas);
            i3 = i2;
            int i4 = this.zad;
            if (i3 == i4) {
                drawable2.setAlpha(i4);
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        if (z2) {
            drawable.setAlpha(this.zad - i3);
        }
        drawable.draw(canvas);
        if (z2) {
            drawable.setAlpha(this.zad);
        }
        if (i3 > 0) {
            drawable2.setAlpha(i3);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.zad);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        zah zahVar = this.zai;
        return changingConfigurations | zahVar.zaa | zahVar.zab;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public final Drawable.ConstantState getConstantState() {
        if (zac()) {
            this.zai.zaa = getChangingConfigurations();
            return this.zai;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.zaj.getIntrinsicHeight(), this.zak.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.zaj.getIntrinsicWidth(), this.zak.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.zan) {
            this.zao = Drawable.resolveOpacity(this.zaj.getOpacity(), this.zak.getOpacity());
            this.zan = true;
        }
        return this.zao;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.zah && super.mutate() == this) {
            if (zac()) {
                this.zaj.mutate();
                this.zak.mutate();
                this.zah = true;
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{5869511958496378391L, -5066843338668313843L, -7141753347448295030L, -2145517673243945461L, -7677588936030431383L, 6476617909531146072L, -9193589562798768048L, 501774180123981344L, -4048945693834222599L, 8328854676715933054L, 3638284409180567313L, 3049273749369457799L, 4345831959992765026L, -2206652517668208183L, -2014766289898972267L}).toString());
            }
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.zaj.setBounds(rect);
        this.zak.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.zaf == this.zad) {
            this.zaf = i;
        }
        this.zad = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.zaj.setColorFilter(colorFilter);
        this.zak.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final Drawable zaa() {
        return this.zak;
    }

    public final void zab(int i) {
        this.zac = this.zad;
        this.zaf = 0;
        this.zae = 250;
        this.zaa = 1;
        invalidateSelf();
    }

    public final boolean zac() {
        if (!this.zal) {
            boolean z = false;
            if (this.zaj.getConstantState() != null && this.zak.getConstantState() != null) {
                z = true;
            }
            this.zam = z;
            this.zal = true;
        }
        return this.zam;
    }

    public zai(@Nullable zah zahVar) {
        this.zaa = 0;
        this.zad = 255;
        this.zaf = 0;
        this.zag = true;
        this.zai = new zah(zahVar);
    }
}
