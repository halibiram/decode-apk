package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zae<A extends BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient>> extends zai {
    protected final A zaa;

    public zae(int i, A a) {
        super(i);
        this.zaa = (A) Preconditions.checkNotNull(a, new ObfuscatedString(new long[]{6184230653129180463L, 1184505627229822206L, -3481636979330581312L, -1906156669767043376L, -5501337435563538259L}).toString());
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(@NonNull Status status) {
        try {
            this.zaa.setFailedResult(status);
        } catch (IllegalStateException unused) {
            new ObfuscatedString(new long[]{5178009927981748569L, -3212412247584314880L, -2942722162463961432L}).toString();
            new ObfuscatedString(new long[]{-2447516933379683508L, -357294169772234350L, -2997261875054278129L, -1180964840460397428L, -3972920617895518902L}).toString();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zae(@NonNull Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(simpleName.length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        try {
            this.zaa.setFailedResult(new Status(10, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{5819710517270989421L, 1519698826259240695L}), sb, localizedMessage)));
        } catch (IllegalStateException unused) {
            new ObfuscatedString(new long[]{8318293813101683907L, 7361000349899766002L, -395471646613790268L}).toString();
            new ObfuscatedString(new long[]{-7127121071019824584L, 5231509848665739338L, 864060338147362172L, -2920335534686562113L, -616366433087849098L}).toString();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zaf(zabq<?> zabqVar) {
        try {
            this.zaa.run(zabqVar.zaf());
        } catch (RuntimeException e) {
            zae(e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zag(@NonNull zaad zaadVar, boolean z) {
        zaadVar.zac(this.zaa, z);
    }
}
