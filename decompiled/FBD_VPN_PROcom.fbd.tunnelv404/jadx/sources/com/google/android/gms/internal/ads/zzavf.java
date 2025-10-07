package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.view.PointerIconCompat;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes2.dex */
public abstract class zzavf implements zzave {
    protected static volatile zzawj zza;
    protected MotionEvent zzb;
    protected double zzk;
    protected float zzl;
    protected float zzm;
    protected float zzn;
    protected float zzo;
    protected DisplayMetrics zzq;

    @Nullable
    protected zzawb zzr;
    private double zzs;
    private double zzt;
    protected final LinkedList zzc = new LinkedList();
    protected long zzd = 0;
    protected long zze = 0;
    protected long zzf = 0;
    protected long zzg = 0;
    protected long zzh = 0;
    protected long zzi = 0;
    protected long zzj = 0;
    private boolean zzu = false;
    protected boolean zzp = false;

    public zzavf(Context context) {
        try {
            zzatx.zzd();
            this.zzq = context.getResources().getDisplayMetrics();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcz)).booleanValue()) {
                this.zzr = new zzawb();
            }
        } catch (Throwable unused) {
        }
    }

    private final void zzj() {
        this.zzh = 0L;
        this.zzd = 0L;
        this.zze = 0L;
        this.zzf = 0L;
        this.zzg = 0L;
        this.zzi = 0L;
        this.zzj = 0L;
        if (!this.zzc.isEmpty()) {
            Iterator it = this.zzc.iterator();
            while (it.hasNext()) {
                ((MotionEvent) it.next()).recycle();
            }
            this.zzc.clear();
        } else {
            MotionEvent motionEvent = this.zzb;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.zzb = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final String zzm(Context context, String str, int i, View view, Activity activity, byte[] bArr) {
        zzavd zzavdVar;
        String str2;
        int i2;
        Exception exc;
        int i3;
        String zza2;
        int i4;
        int i5;
        int i6;
        int i7 = i;
        long currentTimeMillis = System.currentTimeMillis();
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcr)).booleanValue();
        zzasg zzasgVar = null;
        if (booleanValue) {
            if (zza != null) {
                zzavdVar = zza.zzd();
            } else {
                zzavdVar = null;
            }
            str2 = new ObfuscatedString(new long[]{4031330579640553963L, 7305454767858745357L}).toString();
        } else {
            zzavdVar = null;
            str2 = null;
        }
        try {
            if (i7 == 3) {
                zzasgVar = zzb(context, view, activity);
                try {
                    this.zzu = true;
                    i6 = PointerIconCompat.TYPE_HAND;
                } catch (Exception e) {
                    exc = e;
                    i2 = 3;
                    if (booleanValue && zzavdVar != null) {
                        if (i7 != i2) {
                            i3 = PointerIconCompat.TYPE_HELP;
                        } else if (i7 == 2) {
                            i3 = PointerIconCompat.TYPE_VERTICAL_TEXT;
                        } else {
                            i7 = 1;
                            i3 = 1001;
                        }
                        zzavdVar.zzc(i3, -1, System.currentTimeMillis() - currentTimeMillis, str2, exc);
                    }
                    long currentTimeMillis2 = System.currentTimeMillis();
                    if (zzasgVar != null) {
                    }
                    zza2 = Integer.toString(5);
                    return zza2;
                }
            } else if (i7 == 2) {
                zzasgVar = zzd(context, view, activity);
                i6 = PointerIconCompat.TYPE_TEXT;
            } else {
                zzasgVar = zzc(context, null);
                i6 = 1000;
            }
            if (booleanValue && zzavdVar != null) {
                i2 = 3;
                try {
                    zzavdVar.zzc(i6, -1, System.currentTimeMillis() - currentTimeMillis, str2, null);
                } catch (Exception e2) {
                    e = e2;
                    exc = e;
                    if (booleanValue) {
                        if (i7 != i2) {
                        }
                        zzavdVar.zzc(i3, -1, System.currentTimeMillis() - currentTimeMillis, str2, exc);
                    }
                    long currentTimeMillis22 = System.currentTimeMillis();
                    if (zzasgVar != null) {
                    }
                    zza2 = Integer.toString(5);
                    return zza2;
                }
            } else {
                i2 = 3;
            }
        } catch (Exception e3) {
            e = e3;
            i2 = 3;
        }
        long currentTimeMillis222 = System.currentTimeMillis();
        if (zzasgVar != null) {
            try {
            } catch (Exception e4) {
                zza2 = Integer.toString(7);
                if (booleanValue && zzavdVar != null) {
                    if (i7 == i2) {
                        i5 = PointerIconCompat.TYPE_CROSSHAIR;
                    } else if (i7 == 2) {
                        i5 = PointerIconCompat.TYPE_COPY;
                    } else {
                        i5 = WebSocketProtocol.CLOSE_NO_STATUS_CODE;
                    }
                    zzavdVar.zzc(i5, -1, System.currentTimeMillis() - currentTimeMillis222, str2, e4);
                }
            }
            if (((zzatd) zzasgVar.zzal()).zzaz() != 0) {
                zzatd zzatdVar = (zzatd) zzasgVar.zzal();
                int i8 = zzatx.zzc;
                zza2 = zzatx.zza(zzatdVar.zzax(), str);
                if (booleanValue && zzavdVar != null) {
                    if (i7 == i2) {
                        i4 = PointerIconCompat.TYPE_CELL;
                    } else if (i7 == 2) {
                        i4 = PointerIconCompat.TYPE_ALIAS;
                    } else {
                        i4 = PointerIconCompat.TYPE_WAIT;
                    }
                    zzavdVar.zzc(i4, -1, System.currentTimeMillis() - currentTimeMillis222, str2, null);
                }
                return zza2;
            }
        }
        zza2 = Integer.toString(5);
        return zza2;
    }

    public abstract long zza(StackTraceElement[] stackTraceElementArr);

    public abstract zzasg zzb(Context context, View view, Activity activity);

    public abstract zzasg zzc(Context context, zzarz zzarzVar);

    public abstract zzasg zzd(Context context, View view, Activity activity);

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zze(Context context, @Nullable String str, @Nullable View view) {
        return zzm(context, str, 3, view, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zzf(Context context, @Nullable String str, @Nullable View view, @Nullable Activity activity) {
        return zzm(context, str, 3, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zzg(Context context) {
        if (!zzawm.zzc()) {
            return zzm(context, null, 1, null, null, null);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{4457883286629028366L, 4279854668502171421L, 7700196242728826404L, 4554975404265663278L, -1092519037218176029L, -25260307919534626L, 1318045021485296952L, -1492993332669474161L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zzh(Context context, @Nullable View view, @Nullable Activity activity) {
        return zzm(context, null, 2, view, activity, null);
    }

    public abstract zzawl zzi(MotionEvent motionEvent);

    @Override // com.google.android.gms.internal.ads.zzave
    public final synchronized void zzk(@Nullable MotionEvent motionEvent) {
        Long l;
        try {
            if (this.zzu) {
                zzj();
                this.zzu = false;
            }
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1 || action == 2) {
                    double rawX = motionEvent.getRawX();
                    double rawY = motionEvent.getRawY();
                    double d = rawX - this.zzs;
                    double d2 = rawY - this.zzt;
                    this.zzk += Math.sqrt((d2 * d2) + (d * d));
                    this.zzs = rawX;
                    this.zzt = rawY;
                }
            } else {
                this.zzk = 0.0d;
                this.zzs = motionEvent.getRawX();
                this.zzt = motionEvent.getRawY();
            }
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                try {
                    if (action2 != 1) {
                        if (action2 != 2) {
                            if (action2 == 3) {
                                this.zzg++;
                            }
                        } else {
                            this.zze += motionEvent.getHistorySize() + 1;
                            zzawl zzi = zzi(motionEvent);
                            Long l2 = zzi.zzd;
                            if (l2 != null && zzi.zzg != null) {
                                this.zzi = l2.longValue() + zzi.zzg.longValue() + this.zzi;
                            }
                            if (this.zzq != null && (l = zzi.zze) != null && zzi.zzh != null) {
                                this.zzj = l.longValue() + zzi.zzh.longValue() + this.zzj;
                            }
                        }
                    } else {
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        this.zzb = obtain;
                        this.zzc.add(obtain);
                        if (this.zzc.size() > 6) {
                            ((MotionEvent) this.zzc.remove()).recycle();
                        }
                        this.zzf++;
                        this.zzh = zza(new Throwable().getStackTrace());
                    }
                } catch (zzavz unused) {
                }
            } else {
                this.zzl = motionEvent.getX();
                this.zzm = motionEvent.getY();
                this.zzn = motionEvent.getRawX();
                this.zzo = motionEvent.getRawY();
                this.zzd++;
            }
            this.zzp = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final synchronized void zzl(int i, int i2, int i3) {
        try {
            if (this.zzb != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcp)).booleanValue()) {
                    zzj();
                } else {
                    this.zzb.recycle();
                }
            }
            DisplayMetrics displayMetrics = this.zzq;
            if (displayMetrics != null) {
                float f = displayMetrics.density;
                this.zzb = MotionEvent.obtain(0L, i3, 1, i * f, i2 * f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            } else {
                this.zzb = null;
            }
            this.zzp = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzawb zzawbVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcz)).booleanValue() && (zzawbVar = this.zzr) != null) {
            zzawbVar.zzb(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public void zzo(View view) {
    }
}
