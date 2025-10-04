package com.v2ray.ang.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.AppInfo;
import defpackage.AbstractC0892xc141c517;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Ljava/util/ArrayList;", "Lcom/v2ray/ang/dto/AppInfo;", "Lkotlin/collections/ArrayList;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.util.AppManagerUtil$loadNetworkAppList$2", f = "AppManagerUtil.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class AppManagerUtil$loadNetworkAppList$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ArrayList<AppInfo>>, Object> {
    final /* synthetic */ Context $context;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppManagerUtil$loadNetworkAppList$2(Context context, Continuation<? super AppManagerUtil$loadNetworkAppList$2> continuation) {
        super(2, continuation);
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AppManagerUtil$loadNetworkAppList$2(this.$context, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            PackageManager packageManager = this.$context.getPackageManager();
            List<PackageInfo> installedPackages = packageManager.getInstalledPackages(4096);
            Intrinsics.checkNotNullExpressionValue(installedPackages, new ObfuscatedString(new long[]{4064963638933679849L, 1550613944239384619L, -2126617357110607757L, -783637670161149535L, -7360197492837197254L}).toString());
            ArrayList arrayList = new ArrayList();
            for (PackageInfo packageInfo : installedPackages) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                if (applicationInfo != null) {
                    String obj2 = applicationInfo.loadLabel(packageManager).toString();
                    Drawable loadIcon = applicationInfo.loadIcon(packageManager);
                    if (loadIcon != null) {
                        if ((applicationInfo.flags & 1) > 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        String str = packageInfo.packageName;
                        Intrinsics.checkNotNullExpressionValue(str, new ObfuscatedString(new long[]{-1822782021269921122L, 586791104610822305L, 8786901832116182606L}).toString());
                        arrayList.add(new AppInfo(obj2, str, loadIcon, z, 0));
                    }
                }
            }
            return arrayList;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{8341645106322267704L, -6041183892122389471L, -1517421704072897951L, 4079084199404546821L, -259098385994218586L, -6301652334265981243L, 50906259264928502L}).toString());
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ArrayList<AppInfo>> continuation) {
        return ((AppManagerUtil$loadNetworkAppList$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
