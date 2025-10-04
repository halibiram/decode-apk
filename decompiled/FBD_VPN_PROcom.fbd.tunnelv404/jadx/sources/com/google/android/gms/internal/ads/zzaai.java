package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzaai extends HandlerThread implements Handler.Callback {
    private zzer zza;
    private Handler zzb;

    @Nullable
    private Error zzc;

    @Nullable
    private RuntimeException zzd;

    @Nullable
    private zzaak zze;

    public zzaai() {
        super(new ObfuscatedString(new long[]{3886340566516145840L, -7556008213793785997L, 2091243990511649890L, 8308758993020242871L, -8448706178128699748L}).toString());
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z;
        zzer zzerVar;
        int i = message.what;
        try {
            if (i != 1) {
                if (i == 2) {
                    try {
                        zzerVar = this.zza;
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    if (zzerVar != null) {
                        zzerVar.zzc();
                        return true;
                    }
                    throw null;
                }
            } else {
                try {
                    try {
                        try {
                            int i2 = message.arg1;
                            zzer zzerVar2 = this.zza;
                            if (zzerVar2 != null) {
                                zzerVar2.zzb(i2);
                                SurfaceTexture zza = this.zza.zza();
                                if (i2 != 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                this.zze = new zzaak(this, zza, z, null);
                                synchronized (this) {
                                    notify();
                                }
                            } else {
                                throw null;
                            }
                        } catch (Error e) {
                            zzff.zzd(new ObfuscatedString(new long[]{-2102545185955908757L, 7293866234212209471L, 4902868852011429374L, -538245168420178205L}).toString(), new ObfuscatedString(new long[]{-6040604261316022238L, 858083050011611042L, -148496083268632287L, -414605553591187327L, 5265891914918583551L, -5140601608260142894L}).toString(), e);
                            this.zzc = e;
                            synchronized (this) {
                                notify();
                            }
                        }
                    } catch (zzet e2) {
                        zzff.zzd(new ObfuscatedString(new long[]{-2186215173376509895L, -6765295289807780729L, -3844159491958460559L, 8748937633752516979L}).toString(), new ObfuscatedString(new long[]{7231443861406725303L, -6342149391027505435L, 3342880314787522015L, -4337592814563583015L, 3339681181497722456L, -1753289268029055121L}).toString(), e2);
                        this.zzd = new IllegalStateException(e2);
                        synchronized (this) {
                            notify();
                        }
                    }
                } catch (RuntimeException e3) {
                    zzff.zzd(new ObfuscatedString(new long[]{8355776888669232701L, 3805231489656036956L, 5855198045548564530L, -4090747561812811036L}).toString(), new ObfuscatedString(new long[]{3549151501683104270L, 6784085094722859059L, 7299743518253497173L, -5198551261709269371L, 5431330181671521007L, 5028878770882535998L}).toString(), e3);
                    this.zzd = e3;
                    synchronized (this) {
                        notify();
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }

    public final zzaak zza(int i) {
        boolean z;
        start();
        Handler handler = new Handler(getLooper(), this);
        this.zzb = handler;
        this.zza = new zzer(handler, null);
        synchronized (this) {
            z = false;
            this.zzb.obtainMessage(1, i, 0).sendToTarget();
            while (this.zze == null && this.zzd == null && this.zzc == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.zzd;
        if (runtimeException == null) {
            Error error = this.zzc;
            if (error == null) {
                zzaak zzaakVar = this.zze;
                zzaakVar.getClass();
                return zzaakVar;
            }
            throw error;
        }
        throw runtimeException;
    }

    public final void zzb() {
        Handler handler = this.zzb;
        handler.getClass();
        handler.sendEmptyMessage(2);
    }
}
