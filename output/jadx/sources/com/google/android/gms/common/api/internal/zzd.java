package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.internal.common.zzi;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public final class zzd extends Fragment implements LifecycleFragment {
    private static final WeakHashMap zza = new WeakHashMap();
    private final Map zzb = DesugarCollections.synchronizedMap(new ArrayMap());
    private int zzc = 0;

    @Nullable
    private Bundle zzd;

    public static zzd zzc(FragmentActivity fragmentActivity) {
        zzd zzdVar;
        WeakHashMap weakHashMap = zza;
        WeakReference weakReference = (WeakReference) weakHashMap.get(fragmentActivity);
        if (weakReference != null && (zzdVar = (zzd) weakReference.get()) != null) {
            return zzdVar;
        }
        try {
            zzd zzdVar2 = (zzd) fragmentActivity.getSupportFragmentManager().findFragmentByTag(new ObfuscatedString(new long[]{3118123590633353601L, -4760991847237313987L, 2968474281727665507L, -6168792050928718749L, -189473103098887832L}).toString());
            if (zzdVar2 == null || zzdVar2.isRemoving()) {
                zzdVar2 = new zzd();
                fragmentActivity.getSupportFragmentManager().beginTransaction().add(zzdVar2, new ObfuscatedString(new long[]{8165839789731427013L, 1004890461818495403L, 7128884286238887843L, 6812434972085071115L, 6016846732596402246L}).toString()).commitAllowingStateLoss();
            }
            weakHashMap.put(fragmentActivity, new WeakReference(zzdVar2));
            return zzdVar2;
        } catch (ClassCastException e) {
            throw new IllegalStateException(new ObfuscatedString(new long[]{912757894328904622L, 7730642056349621875L, 2392979600882106769L, 297059792469818124L, -7778080846607305064L, -8849575099028792454L, -3697474320027722634L, 8984524477135958480L, -7047180622114781837L, -2839733692656149871L, -1779030179789900179L, 7463010526207118208L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final void addCallback(String str, @NonNull LifecycleCallback lifecycleCallback) {
        if (!this.zzb.containsKey(str)) {
            this.zzb.put(str, lifecycleCallback);
            if (this.zzc > 0) {
                new zzi(Looper.getMainLooper()).post(new zzc(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3718311487080956310L, -100538773545255872L, 2568478482061285549L, 6631766978676301252L, -6342585539955807280L}).toString());
        sb.append(str);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4241986059833960162L, -3050851062137213618L, -264503783692085248L, -7630053602346461000L, -3229145208577571565L}), sb));
    }

    @Override // androidx.fragment.app.Fragment
    public final void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    @Nullable
    public final <T extends LifecycleCallback> T getCallbackOrNull(String str, Class<T> cls) {
        return cls.cast(this.zzb.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    @Nullable
    public final /* synthetic */ Activity getLifecycleActivity() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isCreated() {
        return this.zzc > 0;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isStarted() {
        return this.zzc >= 2;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onActivityResult(i, i2, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        Bundle bundle2;
        super.onCreate(bundle);
        this.zzc = 1;
        this.zzd = bundle;
        for (Map.Entry entry : this.zzb.entrySet()) {
            LifecycleCallback lifecycleCallback = (LifecycleCallback) entry.getValue();
            if (bundle != null) {
                bundle2 = bundle.getBundle((String) entry.getKey());
            } else {
                bundle2 = null;
            }
            lifecycleCallback.onCreate(bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.zzc = 5;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onDestroy();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.zzc = 3;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onResume();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Map.Entry entry : this.zzb.entrySet()) {
                Bundle bundle2 = new Bundle();
                ((LifecycleCallback) entry.getValue()).onSaveInstanceState(bundle2);
                bundle.putBundle((String) entry.getKey(), bundle2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.zzc = 2;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onStart();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.zzc = 4;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onStop();
        }
    }
}
