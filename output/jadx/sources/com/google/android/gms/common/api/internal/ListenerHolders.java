package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;

@KeepForSdk
/* loaded from: classes2.dex */
public class ListenerHolders {
    private final Set<ListenerHolder<?>> zaa = Collections.newSetFromMap(new WeakHashMap());

    @NonNull
    @KeepForSdk
    public static <L> ListenerHolder<L> createListenerHolder(@NonNull L l, @NonNull Looper looper, @NonNull String str) {
        Preconditions.checkNotNull(l, new ObfuscatedString(new long[]{-2239724534134911997L, 7876911014394992741L, 3465835112729298731L, -968512831706156734L, 3837664955218925754L}).toString());
        Preconditions.checkNotNull(looper, new ObfuscatedString(new long[]{-3563102697145623881L, 8659310707647183772L, 1838416167899983673L, 2133814530814359254L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{-7664669797215973734L, -2413117340823505026L, 6553307852704723353L, 5056364114713672033L, 7095239380014113995L}).toString());
        return new ListenerHolder<>(looper, l, str);
    }

    @NonNull
    @KeepForSdk
    public static <L> ListenerHolder.ListenerKey<L> createListenerKey(@NonNull L l, @NonNull String str) {
        Preconditions.checkNotNull(l, new ObfuscatedString(new long[]{-4317473112203744337L, 4745450494968986202L, -5176223358530512461L, 890911377579973338L, 6015656153079520109L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{9018092717835942975L, 9088884969779923260L, -8394987068574635557L, -618940960883152669L, 2336301371792554463L}).toString());
        Preconditions.checkNotEmpty(str, new ObfuscatedString(new long[]{-7499085514149565404L, 6613441577849245627L, -2399339941713526107L, -6184643806574023124L, -1557440597101359630L}).toString());
        return new ListenerHolder.ListenerKey<>(l, str);
    }

    @NonNull
    public final <L> ListenerHolder<L> zaa(@NonNull L l, @NonNull Looper looper, @NonNull String str) {
        ListenerHolder<L> createListenerHolder = createListenerHolder(l, looper, new ObfuscatedString(new long[]{6242568847479679260L, 2002240299668882181L}).toString());
        this.zaa.add(createListenerHolder);
        return createListenerHolder;
    }

    public final void zab() {
        Iterator<ListenerHolder<?>> it = this.zaa.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.zaa.clear();
    }

    @NonNull
    @KeepForSdk
    public static <L> ListenerHolder<L> createListenerHolder(@NonNull L l, @NonNull Executor executor, @NonNull String str) {
        Preconditions.checkNotNull(l, new ObfuscatedString(new long[]{-2240536043764043805L, -1312844062373938308L, 9191999106911561013L, -6692590025375362367L, -1320886378661914346L}).toString());
        Preconditions.checkNotNull(executor, new ObfuscatedString(new long[]{113442102749934588L, 2234698070927051570L, -2847892835892918562L, -7024429794231390160L, -5232589370443332390L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{872909328549018454L, -3436119423910179481L, -7015585812224130408L, 2688316086531921301L, 8396501367341159671L}).toString());
        return new ListenerHolder<>(executor, l, str);
    }
}
