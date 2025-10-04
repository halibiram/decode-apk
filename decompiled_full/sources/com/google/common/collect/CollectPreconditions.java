package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class CollectPreconditions {
    public static void checkEntryNotNull(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 != null) {
                return;
            }
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(valueOf.length() + 26);
            sb.append(new ObfuscatedString(new long[]{-958283588919874519L, -8297309180712763179L, 4793166781500072432L, -313924074864071965L}).toString());
            sb.append(valueOf);
            throw new NullPointerException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6167691456153841611L, 7479058668728116566L}), sb));
        }
        String valueOf2 = String.valueOf(obj2);
        throw new NullPointerException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-5807983650786197421L, -8090785573090149246L, 4979114393346794544L, 6290274236225016420L}), new StringBuilder(valueOf2.length() + 24), valueOf2));
    }

    @CanIgnoreReturnValue
    public static int checkNonnegative(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3914211821281692378L, -8293930619127528174L, -2251180855037678965L, 1508053275063121021L, 1212523170388502749L}), AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(40, str), str), i));
    }

    public static void checkPositive(int i, String str) {
        if (i > 0) {
            return;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{3819226067070135617L, 3395330257006093768L, 7734622213173477995L, -4527826870868730281L, 8794136415058720271L}), AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(38, str), str), i));
    }

    public static void checkRemove(boolean z) {
        Preconditions.checkState(z, new ObfuscatedString(new long[]{7331592837523725616L, 9160835405877096488L, -8167826478493691042L, -4889669097861265345L, 6615692881051954284L, -4295416989364270650L, -404397449944362645L, 9019646050637254528L}).toString());
    }

    @CanIgnoreReturnValue
    public static long checkNonnegative(long j, String str) {
        if (j >= 0) {
            return j;
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{108375250483326722L, -2614873919391201994L, 1001606757125151275L, -7429715738706175200L, 8444927195041508928L}), AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(49, str), str), j));
    }
}
