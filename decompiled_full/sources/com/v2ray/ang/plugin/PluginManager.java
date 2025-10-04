package com.v2ray.ang.plugin;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.pm.ComponentInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.system.Os;
import androidx.core.os.BundleKt;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.AngApplication;
import com.v2ray.ang.extension._ExtKt;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0586x968d4673;
import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC0745x74e3eed7;
import defpackage.AbstractC1197x89633db9;
import defpackage.C0396x4a23d5ac;
import defpackage.C0648x4ba9bb0c;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.AbstractC0298xfbe0c504;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\b\u001a\u00020\u0007J \u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\rJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\rH\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\"\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\nH\u0002J\"\u0010\u001a\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\nH\u0003J\u0014\u0010\u001b\u001a\u0004\u0018\u00010\r*\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\rR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/v2ray/ang/plugin/PluginManager;", "", "<init>", "()V", "receiver", "Landroid/content/BroadcastReceiver;", "cachedPlugins", "Lcom/v2ray/ang/plugin/PluginList;", "fetchPlugins", "buildUri", "Landroid/net/Uri;", "kotlin.jvm.PlatformType", "id", "", "authority", "init", "Lcom/v2ray/ang/plugin/PluginManager$InitResult;", "pluginId", "initNative", "initNativeFaster", "provider", "Landroid/content/pm/ProviderInfo;", "initNativeFast", "cr", "Landroid/content/ContentResolver;", "uri", "initNativeSlow", "loadString", "Landroid/content/pm/ComponentInfo;", "key", "PluginNotFoundException", "InitResult", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginManager.kt\ncom/v2ray/ang/plugin/PluginManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,234:1\n774#2:235\n865#2,2:236\n774#2:238\n865#2,2:239\n774#2:241\n865#2,2:242\n774#2:244\n865#2,2:245\n774#2:247\n865#2,2:248\n1#3:250\n*S KotlinDebug\n*F\n+ 1 PluginManager.kt\ncom/v2ray/ang/plugin/PluginManager\n*L\n94#1:235\n94#1:236,2\n99#1:238\n99#1:239,2\n105#1:241\n105#1:242,2\n111#1:244\n111#1:245,2\n116#1:247\n116#1:248,2\n*E\n"})
/* loaded from: classes3.dex */
public final class PluginManager {

    @NotNull
    public static final PluginManager INSTANCE = new PluginManager();

    @Nullable
    private static PluginList cachedPlugins;

    @Nullable
    private static BroadcastReceiver receiver;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/v2ray/ang/plugin/PluginManager$InitResult;", "", "path", "", "<init>", "(Ljava/lang/String;)V", "getPath", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class InitResult {

        @NotNull
        private final String path;

        public InitResult(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-8966929865121827833L, 1094119791679695840L}).toString());
            this.path = str;
        }

        public static /* synthetic */ InitResult copy$default(InitResult initResult, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = initResult.path;
            }
            return initResult.copy(str);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getPath() {
            return this.path;
        }

        @NotNull
        public final InitResult copy(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, new ObfuscatedString(new long[]{3582964091417436135L, -3940473567151586011L}).toString());
            return new InitResult(path);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof InitResult) && Intrinsics.areEqual(this.path, ((InitResult) other).path);
        }

        @NotNull
        public final String getPath() {
            return this.path;
        }

        public int hashCode() {
            return this.path.hashCode();
        }

        @NotNull
        public String toString() {
            return AbstractC0362x4440ab85.m2932x95f25580("InitResult(path=", this.path, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/v2ray/ang/plugin/PluginManager$PluginNotFoundException;", "Ljava/io/FileNotFoundException;", "plugin", "", "<init>", "(Ljava/lang/String;)V", "getPlugin", "()Ljava/lang/String;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PluginNotFoundException extends FileNotFoundException {

        @NotNull
        private final String plugin;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PluginNotFoundException(@NotNull String str) {
            super(str);
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{570847429782384422L, 5107759252471270275L}).toString());
            this.plugin = str;
        }

        @NotNull
        public final String getPlugin() {
            return this.plugin;
        }
    }

    private PluginManager() {
    }

    private final Uri buildUri(String id, String authority) {
        return new Uri.Builder().scheme(new ObfuscatedString(new long[]{-7702702624198529169L, 7839895311477570521L}).toString()).authority(authority).path("/" + id).build();
    }

    public static final Unit fetchPlugins$lambda$2$lambda$1() {
        synchronized (INSTANCE) {
            receiver = null;
            cachedPlugins = null;
        }
        return Unit.INSTANCE;
    }

    private final InitResult initNative(String pluginId) {
        int i;
        String initNativeFaster;
        if (Build.VERSION.SDK_INT >= 24) {
            i = 786560;
        } else {
            i = 128;
        }
        List<ResolveInfo> queryIntentContentProviders = AngApplication.INSTANCE.getApplication().getPackageManager().queryIntentContentProviders(new Intent(new ObfuscatedString(new long[]{-2709852635113042057L, -1481230306141766327L, -2528707094019405621L, 2423512203506700377L, -1542924853743008949L, -2292950985543796045L, -5485582728135533394L, -3510164504615925658L}).toString(), buildUri(pluginId, new ObfuscatedString(new long[]{847896429706229812L, 2737979833949456929L, 104772995009055273L, -4948653183123492200L, 6686168940993181303L, -8362212322521549241L}).toString())), i);
        Intrinsics.checkNotNullExpressionValue(queryIntentContentProviders, new ObfuscatedString(new long[]{-1086092892599699818L, -2824941182274305999L, 229375384809199494L, 2184152401876235563L, -4453333231719398203L}).toString());
        List arrayList = new ArrayList();
        for (Object obj : queryIntentContentProviders) {
            if (((ResolveInfo) obj).providerInfo.exported) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            List<ResolveInfo> queryIntentContentProviders2 = AngApplication.INSTANCE.getApplication().getPackageManager().queryIntentContentProviders(new Intent(new ObfuscatedString(new long[]{-2207422170575276779L, -3981068536876978420L, -3179847847546598603L, -4022016307954594622L, -7812390622437257119L, 1071854230272599730L, -1895627793101917415L, 6830274269570511087L}).toString(), buildUri(pluginId, new ObfuscatedString(new long[]{6585183897286484724L, -8671660106329971549L, -3315212416533352735L, 6819299231201922632L, -7381967947651759013L}).toString())), i);
            Intrinsics.checkNotNullExpressionValue(queryIntentContentProviders2, new ObfuscatedString(new long[]{-8970889577815014204L, -725255815814778729L, -2338448539765297440L, -1531727483185141268L, -5927364382818767520L}).toString());
            arrayList = new ArrayList();
            for (Object obj2 : queryIntentContentProviders2) {
                if (((ResolveInfo) obj2).providerInfo.exported) {
                    arrayList.add(obj2);
                }
            }
        }
        if (arrayList.isEmpty()) {
            List<ResolveInfo> queryIntentContentProviders3 = AngApplication.INSTANCE.getApplication().getPackageManager().queryIntentContentProviders(new Intent(new ObfuscatedString(new long[]{8933196904444140094L, 1143450319735449342L, -5486690531229724934L, -8846084813769109896L, -6380266869243313616L, -5473508610308717317L, -6337046062592831575L, -722321111745688058L}).toString(), buildUri(pluginId, new ObfuscatedString(new long[]{6284046150638556576L, 7220498687916403248L, 5584540697541646052L}).toString())), i);
            Intrinsics.checkNotNullExpressionValue(queryIntentContentProviders3, new ObfuscatedString(new long[]{835729780460056187L, 1535803050486979090L, -856889769363660370L, 809361758801020507L, 5162796263222612480L}).toString());
            arrayList = new ArrayList();
            for (Object obj3 : queryIntentContentProviders3) {
                if (((ResolveInfo) obj3).providerInfo.exported) {
                    arrayList.add(obj3);
                }
            }
        }
        if (arrayList.isEmpty()) {
            List<ResolveInfo> queryIntentContentProviders4 = AngApplication.INSTANCE.getApplication().getPackageManager().queryIntentContentProviders(new Intent(new ObfuscatedString(new long[]{5446399327195734212L, -3520793225327781313L, 4071575160085374718L, -8057118179337575922L, -2429183568227199516L, -7163069140547155423L, -3920681838440559530L, 8406324399144028134L}).toString(), buildUri(pluginId, new ObfuscatedString(new long[]{-321832820134086716L, 3118879622935183528L}).toString())), i);
            Intrinsics.checkNotNullExpressionValue(queryIntentContentProviders4, new ObfuscatedString(new long[]{-7400759255950955492L, 233746837141594360L, -5869372496587742499L, -2595938262391316076L, 4611563496168378593L}).toString());
            arrayList = new ArrayList();
            for (Object obj4 : queryIntentContentProviders4) {
                if (((ResolveInfo) obj4).providerInfo.exported) {
                    arrayList.add(obj4);
                }
            }
        }
        if (arrayList.isEmpty()) {
            List<ResolveInfo> queryIntentContentProviders5 = AngApplication.INSTANCE.getApplication().getPackageManager().queryIntentContentProviders(new Intent(new ObfuscatedString(new long[]{7876713163332279208L, 1017579122390776392L, 8419716576756947124L, -7860192331268250540L, 8542129687916806133L, -4633479170829385647L, 8096408240474428127L, -1289869458309808679L}).toString()), 128);
            Intrinsics.checkNotNullExpressionValue(queryIntentContentProviders5, new ObfuscatedString(new long[]{-8142812241373723547L, -6992729422376766068L, 1003465607414982002L, -6550003866813171093L, -6897042731974753912L}).toString());
            arrayList = new ArrayList();
            for (Object obj5 : queryIntentContentProviders5) {
                ResolveInfo resolveInfo = (ResolveInfo) obj5;
                ProviderInfo providerInfo = resolveInfo.providerInfo;
                if (providerInfo.exported && providerInfo.metaData.containsKey(new ObfuscatedString(new long[]{-6890090717433253810L, -6881091309604121113L, 7369446976857417188L, -3984136132301507642L, 4899323254539385220L, 2752610717955984765L}).toString()) && Intrinsics.areEqual(resolveInfo.providerInfo.metaData.getString(new ObfuscatedString(new long[]{-4230413650223110475L, -1885671972638180305L, 4891291092459132580L, -2421437032598433284L, 4518309626631472537L, 2806703122497186833L}).toString()), pluginId)) {
                    arrayList.add(obj5);
                }
            }
            if (arrayList.size() > 1) {
                arrayList = AbstractC0586x968d4673.listOf(arrayList.get(0));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        if (arrayList.size() <= 1) {
            ProviderInfo providerInfo2 = ((ResolveInfo) CollectionsKt___CollectionsKt.single(arrayList)).providerInfo;
            try {
                Intrinsics.checkNotNull(providerInfo2);
                initNativeFaster = initNativeFaster(providerInfo2);
            } catch (Throwable th) {
                th = th;
            }
            if (initNativeFaster != null) {
                return new InitResult(initNativeFaster);
            }
            th = null;
            Uri.Builder builder = new Uri.Builder();
            builder.scheme(new ObfuscatedString(new long[]{-5401209986885471761L, -7109302610819597016L}).toString());
            builder.authority(providerInfo2.authority);
            Uri build = builder.build();
            try {
                ContentResolver contentResolver = AngApplication.INSTANCE.getApplication().getContentResolver();
                Intrinsics.checkNotNullExpressionValue(contentResolver, new ObfuscatedString(new long[]{-2175890465017464677L, -1250073098165969050L, 7612002678897950615L, -6332992362653993555L}).toString());
                Intrinsics.checkNotNull(build);
                String initNativeFast = initNativeFast(contentResolver, pluginId, build);
                if (initNativeFast == null) {
                    return null;
                }
                return new InitResult(initNativeFast);
            } catch (Throwable th2) {
                if (th != null) {
                    AbstractC0720xaa9ccb5a.addSuppressed(th2, th);
                }
                try {
                    ContentResolver contentResolver2 = AngApplication.INSTANCE.getApplication().getContentResolver();
                    Intrinsics.checkNotNullExpressionValue(contentResolver2, new ObfuscatedString(new long[]{3026729895472904223L, 7830863338740156287L, 3838607128194730772L, -7774560927915874560L}).toString());
                    Intrinsics.checkNotNull(build);
                    String initNativeSlow = initNativeSlow(contentResolver2, pluginId, build);
                    if (initNativeSlow == null) {
                        return null;
                    }
                    return new InitResult(initNativeSlow);
                } catch (Throwable th3) {
                    AbstractC0720xaa9ccb5a.addSuppressed(th3, th2);
                    throw th3;
                }
            }
        }
        String m2952x5ac5058d = AbstractC0362x4440ab85.m2952x5ac5058d("Conflicting plugins found from: ", CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, new C0648x4ba9bb0c(11), 31, null));
        _ExtKt.toast(AngApplication.INSTANCE.getApplication(), m2952x5ac5058d);
        throw new IllegalStateException(m2952x5ac5058d);
    }

    public static final CharSequence initNative$lambda$8(ResolveInfo resolveInfo) {
        String str = resolveInfo.providerInfo.packageName;
        Intrinsics.checkNotNullExpressionValue(str, new ObfuscatedString(new long[]{-4748602660787249286L, 5133853523624125831L, 1013535793434344840L}).toString());
        return str;
    }

    private final String initNativeFast(ContentResolver cr, String pluginId, Uri uri) {
        String string;
        Bundle call = cr.call(uri, new ObfuscatedString(new long[]{3564013648061282546L, 2208258420156404566L, -5080692247574041308L, 1990510486085962702L}).toString(), (String) null, BundleKt.bundleOf());
        if (call == null || (string = call.getString(new ObfuscatedString(new long[]{-3627600523928882121L, -7784178413564817092L, 4892801934714033646L, 3289036863881207401L, 8651877578325927195L, 3082882631959008327L, -6261139116609132453L}).toString())) == null) {
            return null;
        }
        if (new File(string).canExecute()) {
            return string;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-6182512505503410794L, 269476888208652055L, 7433876445005205247L}).toString());
    }

    private final String initNativeFaster(ProviderInfo provider) {
        String loadString = loadString(provider, new ObfuscatedString(new long[]{-1508860867373357584L, -8145030835745447242L, -3926570744140798357L, -2852543377920753838L, 4643831852667668136L, -4459814345644083628L, -7639273771138709775L}).toString());
        if (loadString != null) {
            File resolve = AbstractC0745x74e3eed7.resolve(new File(provider.applicationInfo.nativeLibraryDir), loadString);
            if (resolve.canExecute()) {
                return resolve.getAbsolutePath();
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{1747925064688130857L, 7954354817384302776L, 104590730108997612L}).toString());
        }
        return null;
    }

    @SuppressLint({"Recycle"})
    private final String initNativeSlow(ContentResolver cr, String pluginId, Uri uri) {
        int i;
        File file = new File(AngApplication.INSTANCE.getApplication().getNoBackupFilesDir(), new ObfuscatedString(new long[]{3361061624110297850L, -3755345209797973212L}).toString());
        Cursor query = cr.query(uri, new String[]{new ObfuscatedString(new long[]{-4460465661889744491L, 7200270357216091430L}).toString(), new ObfuscatedString(new long[]{6909161701597243331L, 4069266911970999639L}).toString()}, null, null, null);
        if (query == null) {
            return null;
        }
        try {
            if (query.moveToFirst()) {
                AbstractC0745x74e3eed7.deleteRecursively(file);
                if (file.mkdirs()) {
                    String str = file.getAbsolutePath() + "/";
                    boolean z = false;
                    do {
                        String string = query.getString(0);
                        File file2 = new File(file, string);
                        String absolutePath = file2.getAbsolutePath();
                        Intrinsics.checkNotNullExpressionValue(absolutePath, new ObfuscatedString(new long[]{5172812939815364337L, 3905951599124980316L, -8951701092331066487L, 1899799791151447456L}).toString());
                        if (AbstractC1197x89633db9.startsWith$default(absolutePath, str, false, 2, null)) {
                            InputStream openInputStream = cr.openInputStream(uri.buildUpon().path(string).build());
                            Intrinsics.checkNotNull(openInputStream);
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                                try {
                                    ByteStreamsKt.copyTo$default(openInputStream, fileOutputStream, 0, 2, null);
                                    CloseableKt.closeFinally(fileOutputStream, null);
                                    CloseableKt.closeFinally(openInputStream, null);
                                    String absolutePath2 = file2.getAbsolutePath();
                                    int type = query.getType(1);
                                    if (type != 1) {
                                        if (type == 3) {
                                            String string2 = query.getString(1);
                                            Intrinsics.checkNotNullExpressionValue(string2, new ObfuscatedString(new long[]{7373877176968539887L, -2595070861035933716L, 7300044047291639541L}).toString());
                                            i = Integer.parseInt(string2, AbstractC0298xfbe0c504.checkRadix(8));
                                        } else {
                                            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5401606645428588455L, -2751627088814083815L, 8990830860936890024L, -3208836929267732201L, -2885446092822022881L}).toString());
                                        }
                                    } else {
                                        i = query.getInt(1);
                                    }
                                    Os.chmod(absolutePath2, i);
                                    if (Intrinsics.areEqual(string, pluginId)) {
                                        z = true;
                                    }
                                } finally {
                                }
                            } finally {
                            }
                        } else {
                            throw new IllegalStateException(new ObfuscatedString(new long[]{7650543125559762800L, -6320989181052661220L, 9000847149907889124L}).toString());
                        }
                    } while (query.moveToNext());
                    CloseableKt.closeFinally(query, null);
                    if (z) {
                        return new File(file, pluginId).getAbsolutePath();
                    }
                    initNativeSlow$entryNotFound();
                    throw new KotlinNothingValueException();
                }
                throw new FileNotFoundException(new ObfuscatedString(new long[]{7284079949746109499L, -4741521305365099052L, -2309461584065981538L, 619007795735155695L, -3424652265737230791L, 9165246673238827207L}).toString());
            }
            initNativeSlow$entryNotFound();
            throw new KotlinNothingValueException();
        } finally {
        }
    }

    private static final Void initNativeSlow$entryNotFound() {
        throw new IndexOutOfBoundsException(new ObfuscatedString(new long[]{-638694943140288674L, -2795440670207037746L, 533907505919126704L, -4842440334016431071L, -6410422688475558726L}).toString());
    }

    @NotNull
    public final PluginList fetchPlugins() {
        PluginList pluginList;
        synchronized (this) {
            try {
                if (receiver == null) {
                    receiver = _ExtKt.listenForPackageChanges$default(AngApplication.INSTANCE.getApplication(), false, new C0396x4a23d5ac(22), 1, null);
                }
                if (cachedPlugins == null) {
                    cachedPlugins = new PluginList();
                }
                pluginList = cachedPlugins;
                Intrinsics.checkNotNull(pluginList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return pluginList;
    }

    @Nullable
    public final InitResult init(@NotNull String pluginId) {
        Intrinsics.checkNotNullParameter(pluginId, new ObfuscatedString(new long[]{1772318037511194628L, 7839400359437235680L}).toString());
        Throwable th = null;
        if (pluginId.length() == 0) {
            return null;
        }
        try {
            InitResult initNative = initNative(pluginId);
            if (initNative != null) {
                return initNative;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        if (th == null) {
            throw new PluginNotFoundException(pluginId);
        }
        throw th;
    }

    @Nullable
    public final String loadString(@NotNull ComponentInfo componentInfo, @NotNull String str) {
        Intrinsics.checkNotNullParameter(componentInfo, new ObfuscatedString(new long[]{-4946490905827478166L, -3222800291890661898L}).toString());
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{4524234429607289744L, 3323368451016641452L}).toString());
        String string = componentInfo.metaData.getString(str);
        if (string == null) {
            return null;
        }
        return string;
    }
}
