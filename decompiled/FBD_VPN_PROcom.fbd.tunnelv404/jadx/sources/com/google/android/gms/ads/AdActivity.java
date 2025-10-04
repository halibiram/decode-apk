package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbwt;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public final class AdActivity extends Activity {

    @NonNull
    @KeepForSdk
    public static final String CLASS_NAME = new ObfuscatedString(new long[]{-4441184304928571776L, 7343570210791604582L, -454200082757023664L, 5461847457155036078L, -5102462155215445804L, 5271145558554725771L}).toString();

    @Nullable
    private zzbwt zza;

    private final void zza() {
        zzbwt zzbwtVar = this.zza;
        if (zzbwtVar != null) {
            try {
                zzbwtVar.zzx();
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{7133354751632629418L, -1405147991275677482L, 6750742518458271926L, -7925726751947893463L, -4299369636897528887L, -8375336699187426055L}).toString(), e);
            }
        }
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, @NonNull Intent intent) {
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                zzbwtVar.zzh(i, i2, intent);
            }
        } catch (Exception e) {
            zzcec.zzl(new ObfuscatedString(new long[]{8365513264530425745L, -8435503985799985713L, 8000966448790337438L, -6363280842125399200L, 971413793273493870L, -4958341862372100426L}).toString(), e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                if (!zzbwtVar.zzH()) {
                    return;
                }
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-6458409194064438582L, -5803096216974774665L, 6603253809764053735L, -6556435771431583380L, 148543377575751550L, 3739587496103026560L}).toString(), e);
        }
        super.onBackPressed();
        try {
            zzbwt zzbwtVar2 = this.zza;
            if (zzbwtVar2 != null) {
                zzbwtVar2.zzi();
            }
        } catch (RemoteException e2) {
            zzcec.zzl(new ObfuscatedString(new long[]{-4860380224245149779L, -8822872690995269433L, -6673275846548574075L, -928837824240152656L, -6215206351811029178L, 6956967525608909148L}).toString(), e2);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                zzbwtVar.zzk(ObjectWrapper.wrap(configuration));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{2743471978691182780L, -7654191312518124511L, 5454466686362260803L, -3892823511496869760L, 3221877008521045433L, 614003175890140083L}).toString(), e);
        }
    }

    @Override // android.app.Activity
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        zzbwt zzo = zzay.zza().zzo(this);
        this.zza = zzo;
        if (zzo != null) {
            try {
                zzo.zzl(bundle);
                return;
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{-1316937304068644692L, 5658540116424446886L, 3571836468718900918L, 2564959769138585996L, -8768882678318669406L, 5080219881166241026L}).toString(), e);
                finish();
                return;
            }
        }
        zzcec.zzl(new ObfuscatedString(new long[]{-5764311569196881508L, -2269215532790402273L, 8093082856965960436L, 2917771130786093766L, 1029526147462314601L, 5701259391452979590L}).toString(), null);
        finish();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                zzbwtVar.zzm();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{6953882973510553604L, -3542223012853389744L, 3662323522183763616L, 5780697870773486794L, 4913145268398019749L, -9009283713364697352L}).toString(), e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                zzbwtVar.zzo();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{2239044958790197002L, -1325572237958268703L, 3184546112593738999L, 6339233175474881701L, -1297260601420475227L, 4313276399100968337L}).toString(), e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                zzbwtVar.zzp(i, strArr, iArr);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-7768975914287783439L, 2355402991809497169L, -4773827956823184749L, -2779229532974041846L, -1214020954950065191L, -7473377567076088129L}).toString(), e);
        }
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                zzbwtVar.zzq();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-6599919780176670185L, -8028417315447974447L, 651923470013568903L, -8929629834606773565L, -1581584813002293543L, 328931351004984084L}).toString(), e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                zzbwtVar.zzr();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{4500649199020732161L, -6169325326081538326L, -5327651037950898318L, 776546853422336733L, -7986408478947343480L, 1830679736229069166L}).toString(), e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                zzbwtVar.zzs(bundle);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{2457553034360116925L, 2789918732527964766L, 6832023486542169052L, -2204323860324470493L, -4718974864311664183L, -1257458683287110975L}).toString(), e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                zzbwtVar.zzt();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{5449172266537955307L, 8809853702983299021L, 1763121465598368185L, -5494999965313840402L, 2464946522336979555L, 391180743528796225L}).toString(), e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                zzbwtVar.zzu();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-2182863550880377346L, 2961020853843456270L, 7298461405773036652L, -3755743708526407819L, -2584938445538436087L, 8093051345568519165L}).toString(), e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            zzbwt zzbwtVar = this.zza;
            if (zzbwtVar != null) {
                zzbwtVar.zzv();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{577359216104730486L, -4469145124808426634L, -4628692749903799670L, -4729073633808329820L, -772268848545735941L, -4548817435004441886L}).toString(), e);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        zza();
    }

    @Override // android.app.Activity
    public final void setContentView(@NonNull View view) {
        super.setContentView(view);
        zza();
    }

    @Override // android.app.Activity
    public final void setContentView(@NonNull View view, @NonNull ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zza();
    }
}
