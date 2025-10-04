package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.HandlerExecutor;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.Executor;

@KeepForSdk
/* loaded from: classes2.dex */
public final class ListenerHolder<L> {
    private final Executor zaa;

    @Nullable
    private volatile L zab;

    @Nullable
    private volatile ListenerKey<L> zac;

    @KeepForSdk
    /* loaded from: classes2.dex */
    public static final class ListenerKey<L> {
        private final L zaa;
        private final String zab;

        @KeepForSdk
        public ListenerKey(L l, String str) {
            this.zaa = l;
            this.zab = str;
        }

        @KeepForSdk
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            if (this.zaa == listenerKey.zaa && this.zab.equals(listenerKey.zab)) {
                return true;
            }
            return false;
        }

        @KeepForSdk
        public int hashCode() {
            return this.zab.hashCode() + (System.identityHashCode(this.zaa) * 31);
        }

        @NonNull
        @KeepForSdk
        public String toIdString() {
            String str = this.zab;
            int identityHashCode = System.identityHashCode(this.zaa);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append(str);
            return AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8433179653178008797L, -8036370020990740867L}), sb, identityHashCode);
        }
    }

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface Notifier<L> {
        @KeepForSdk
        void notifyListener(@NonNull L l);

        @KeepForSdk
        void onNotifyListenerFailed();
    }

    @KeepForSdk
    public ListenerHolder(@NonNull Looper looper, @NonNull L l, @NonNull String str) {
        this.zaa = new HandlerExecutor(looper);
        this.zab = (L) Preconditions.checkNotNull(l, new ObfuscatedString(new long[]{-5046585750215783652L, -537621156996334556L, -3733965036839863448L, -8213124458986380613L, 7461846834665013326L}).toString());
        this.zac = new ListenerKey<>(l, Preconditions.checkNotEmpty(str));
    }

    @KeepForSdk
    public void clear() {
        this.zab = null;
        this.zac = null;
    }

    @Nullable
    @KeepForSdk
    public ListenerKey<L> getListenerKey() {
        return this.zac;
    }

    @KeepForSdk
    public boolean hasListener() {
        return this.zab != null;
    }

    @KeepForSdk
    public void notifyListener(@NonNull final Notifier<? super L> notifier) {
        Preconditions.checkNotNull(notifier, new ObfuscatedString(new long[]{-1278880901049318062L, 5901677048973245593L, -873139285416966829L, 2637542963735519241L, -1023816706852031734L}).toString());
        this.zaa.execute(new Runnable() { // from class: com.google.android.gms.common.api.internal.zacb
            @Override // java.lang.Runnable
            public final void run() {
                ListenerHolder.this.zaa(notifier);
            }
        });
    }

    public final void zaa(Notifier<? super L> notifier) {
        L l = this.zab;
        if (l == null) {
            notifier.onNotifyListenerFailed();
            return;
        }
        try {
            notifier.notifyListener(l);
        } catch (RuntimeException e) {
            notifier.onNotifyListenerFailed();
            throw e;
        }
    }

    @KeepForSdk
    public ListenerHolder(@NonNull Executor executor, @NonNull L l, @NonNull String str) {
        this.zaa = (Executor) Preconditions.checkNotNull(executor, new ObfuscatedString(new long[]{-1547847126075803578L, 1850244819487611137L, 6602336535257547149L, -5085239848332629233L, 5508484772719959558L}).toString());
        this.zab = (L) Preconditions.checkNotNull(l, new ObfuscatedString(new long[]{-3338774419063805847L, -4105527389668534266L, 9123555926352756951L, -1031560007469361532L, -5986817077937953033L}).toString());
        this.zac = new ListenerKey<>(l, Preconditions.checkNotEmpty(str));
    }
}
