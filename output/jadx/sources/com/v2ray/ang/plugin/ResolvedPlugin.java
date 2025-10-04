package com.v2ray.ang.plugin;

import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.AngApplication;
import com.v2ray.ang.plugin.ResolvedPlugin;
import defpackage.AbstractC0919x86d1e2e2;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010(\u001a\u00020)2\u0006\u0010\"\u001a\u00020\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\tX¤\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u00020\r8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0012\u001a\u00020\u00138VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\r8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0011\u001a\u0004\b\u0018\u0010\u000fR\u0014\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\u000fR\u0014\u0010$\u001a\u00020%8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lcom/v2ray/ang/plugin/ResolvedPlugin;", "Lcom/v2ray/ang/plugin/Plugin;", "resolveInfo", "Landroid/content/pm/ResolveInfo;", "<init>", "(Landroid/content/pm/ResolveInfo;)V", "getResolveInfo", "()Landroid/content/pm/ResolveInfo;", "componentInfo", "Landroid/content/pm/ComponentInfo;", "getComponentInfo", "()Landroid/content/pm/ComponentInfo;", "id", "", "getId", "()Ljava/lang/String;", "id$delegate", "Lkotlin/Lazy;", "version", "", "getVersion", "()I", "version$delegate", "versionName", "getVersionName", "versionName$delegate", "label", "", "getLabel", "()Ljava/lang/CharSequence;", "icon", "Landroid/graphics/drawable/Drawable;", "getIcon", "()Landroid/graphics/drawable/Drawable;", "packageName", "getPackageName", "directBootAware", "", "getDirectBootAware", "()Z", "getPackageInfo", "Landroid/content/pm/PackageInfo;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class ResolvedPlugin extends Plugin {

    /* renamed from: id$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy id;

    @NotNull
    private final ResolveInfo resolveInfo;

    /* renamed from: version$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy version;

    /* renamed from: versionName$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy versionName;

    public ResolvedPlugin(@NotNull ResolveInfo resolveInfo) {
        Intrinsics.checkNotNullParameter(resolveInfo, new ObfuscatedString(new long[]{-6458165965165179628L, 232897420654231519L, 6868707610641558630L}).toString());
        this.resolveInfo = resolveInfo;
        final int i = 0;
        this.id = AbstractC0919x86d1e2e2.lazy(new Function0(this) { // from class: 땅땪뒹뒨땜뎻돨돴땧딁되듌돷들듌땧딻둡땤돤땐뎹땝뒛둑뒈뒈돳돶땯돠딻된뒾뎠듻땝뎸돤땝따듌땹뒛뒾디땲땻땸딝뒉땸뒨드딻뒝돳딻뎨딻드땁돛듬딃딤땄됨땀땤땡둬뎡따뒝딽땁땍땜돳돰돠딜땃딤된됩듟뎻땍딹딐땁땮땅땫딠둘땤뎨됫둥듔땝땰돤뒹뎠뎠둥되돸딹딹뎨뒛뎬돰듻땲돼두딟뒻뎻딞듬뒼땻듻

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ResolvedPlugin f5388x3271d0aa;

            {
                this.f5388x3271d0aa = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String id_delegate$lambda$0;
                int version_delegate$lambda$1;
                String versionName_delegate$lambda$2;
                switch (i) {
                    case 0:
                        id_delegate$lambda$0 = ResolvedPlugin.id_delegate$lambda$0(this.f5388x3271d0aa);
                        return id_delegate$lambda$0;
                    case 1:
                        version_delegate$lambda$1 = ResolvedPlugin.version_delegate$lambda$1(this.f5388x3271d0aa);
                        return Integer.valueOf(version_delegate$lambda$1);
                    default:
                        versionName_delegate$lambda$2 = ResolvedPlugin.versionName_delegate$lambda$2(this.f5388x3271d0aa);
                        return versionName_delegate$lambda$2;
                }
            }
        });
        final int i2 = 1;
        this.version = AbstractC0919x86d1e2e2.lazy(new Function0(this) { // from class: 땅땪뒹뒨땜뎻돨돴땧딁되듌돷들듌땧딻둡땤돤땐뎹땝뒛둑뒈뒈돳돶땯돠딻된뒾뎠듻땝뎸돤땝따듌땹뒛뒾디땲땻땸딝뒉땸뒨드딻뒝돳딻뎨딻드땁돛듬딃딤땄됨땀땤땡둬뎡따뒝딽땁땍땜돳돰돠딜땃딤된됩듟뎻땍딹딐땁땮땅땫딠둘땤뎨됫둥듔땝땰돤뒹뎠뎠둥되돸딹딹뎨뒛뎬돰듻땲돼두딟뒻뎻딞듬뒼땻듻

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ResolvedPlugin f5388x3271d0aa;

            {
                this.f5388x3271d0aa = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String id_delegate$lambda$0;
                int version_delegate$lambda$1;
                String versionName_delegate$lambda$2;
                switch (i2) {
                    case 0:
                        id_delegate$lambda$0 = ResolvedPlugin.id_delegate$lambda$0(this.f5388x3271d0aa);
                        return id_delegate$lambda$0;
                    case 1:
                        version_delegate$lambda$1 = ResolvedPlugin.version_delegate$lambda$1(this.f5388x3271d0aa);
                        return Integer.valueOf(version_delegate$lambda$1);
                    default:
                        versionName_delegate$lambda$2 = ResolvedPlugin.versionName_delegate$lambda$2(this.f5388x3271d0aa);
                        return versionName_delegate$lambda$2;
                }
            }
        });
        final int i3 = 2;
        this.versionName = AbstractC0919x86d1e2e2.lazy(new Function0(this) { // from class: 땅땪뒹뒨땜뎻돨돴땧딁되듌돷들듌땧딻둡땤돤땐뎹땝뒛둑뒈뒈돳돶땯돠딻된뒾뎠듻땝뎸돤땝따듌땹뒛뒾디땲땻땸딝뒉땸뒨드딻뒝돳딻뎨딻드땁돛듬딃딤땄됨땀땤땡둬뎡따뒝딽땁땍땜돳돰돠딜땃딤된됩듟뎻땍딹딐땁땮땅땫딠둘땤뎨됫둥듔땝땰돤뒹뎠뎠둥되돸딹딹뎨뒛뎬돰듻땲돼두딟뒻뎻딞듬뒼땻듻

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ResolvedPlugin f5388x3271d0aa;

            {
                this.f5388x3271d0aa = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String id_delegate$lambda$0;
                int version_delegate$lambda$1;
                String versionName_delegate$lambda$2;
                switch (i3) {
                    case 0:
                        id_delegate$lambda$0 = ResolvedPlugin.id_delegate$lambda$0(this.f5388x3271d0aa);
                        return id_delegate$lambda$0;
                    case 1:
                        version_delegate$lambda$1 = ResolvedPlugin.version_delegate$lambda$1(this.f5388x3271d0aa);
                        return Integer.valueOf(version_delegate$lambda$1);
                    default:
                        versionName_delegate$lambda$2 = ResolvedPlugin.versionName_delegate$lambda$2(this.f5388x3271d0aa);
                        return versionName_delegate$lambda$2;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String id_delegate$lambda$0(ResolvedPlugin resolvedPlugin) {
        String loadString = PluginManager.INSTANCE.loadString(resolvedPlugin.getComponentInfo(), new ObfuscatedString(new long[]{-7107050057177009004L, -413767853314835409L, -824696214274114534L, 139156577868560870L, -518753640271344950L, -3906776720938862495L}).toString());
        Intrinsics.checkNotNull(loadString);
        return loadString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String versionName_delegate$lambda$2(ResolvedPlugin resolvedPlugin) {
        String str = resolvedPlugin.getComponentInfo().packageName;
        Intrinsics.checkNotNullExpressionValue(str, new ObfuscatedString(new long[]{4081401178211342420L, -3172370044039311626L, 880383856928421476L}).toString());
        String str2 = resolvedPlugin.getPackageInfo(str).versionName;
        Intrinsics.checkNotNull(str2);
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int version_delegate$lambda$1(ResolvedPlugin resolvedPlugin) {
        String str = resolvedPlugin.getComponentInfo().packageName;
        Intrinsics.checkNotNullExpressionValue(str, new ObfuscatedString(new long[]{7258496757879669287L, -1038662465469239896L, -1547953399093106220L}).toString());
        return resolvedPlugin.getPackageInfo(str).versionCode;
    }

    @NotNull
    public abstract ComponentInfo getComponentInfo();

    @Override // com.v2ray.ang.plugin.Plugin
    public boolean getDirectBootAware() {
        boolean z;
        if (Build.VERSION.SDK_INT >= 24) {
            z = getComponentInfo().directBootAware;
            if (!z) {
                return false;
            }
        }
        return true;
    }

    @Override // com.v2ray.ang.plugin.Plugin
    @NotNull
    public Drawable getIcon() {
        Drawable loadIcon = this.resolveInfo.loadIcon(AngApplication.INSTANCE.getApplication().getPackageManager());
        Intrinsics.checkNotNullExpressionValue(loadIcon, new ObfuscatedString(new long[]{4271572057353618518L, 2047003868465849100L, -4280545029241831197L}).toString());
        return loadIcon;
    }

    @Override // com.v2ray.ang.plugin.Plugin
    @NotNull
    public String getId() {
        return (String) this.id.getValue();
    }

    @Override // com.v2ray.ang.plugin.Plugin
    @NotNull
    public CharSequence getLabel() {
        CharSequence loadLabel = this.resolveInfo.loadLabel(AngApplication.INSTANCE.getApplication().getPackageManager());
        Intrinsics.checkNotNullExpressionValue(loadLabel, new ObfuscatedString(new long[]{-1314769303087276997L, -4074075256220231136L, -3156257735991567760L}).toString());
        return loadLabel;
    }

    @NotNull
    public final PackageInfo getPackageInfo(@NotNull String packageName) {
        int i;
        Intrinsics.checkNotNullParameter(packageName, new ObfuscatedString(new long[]{6769666145853232578L, -1949370959206960292L, 2561287299849151286L}).toString());
        PackageManager packageManager = AngApplication.INSTANCE.getApplication().getPackageManager();
        if (Build.VERSION.SDK_INT >= 28) {
            i = 134217728;
        } else {
            i = 64;
        }
        PackageInfo packageInfo = packageManager.getPackageInfo(packageName, i);
        Intrinsics.checkNotNull(packageInfo);
        return packageInfo;
    }

    @Override // com.v2ray.ang.plugin.Plugin
    @NotNull
    public String getPackageName() {
        String str = getComponentInfo().packageName;
        Intrinsics.checkNotNullExpressionValue(str, new ObfuscatedString(new long[]{1921876250473282495L, -3246416502303786473L, 4735314378750810033L}).toString());
        return str;
    }

    @NotNull
    public final ResolveInfo getResolveInfo() {
        return this.resolveInfo;
    }

    @Override // com.v2ray.ang.plugin.Plugin
    public int getVersion() {
        return ((Number) this.version.getValue()).intValue();
    }

    @Override // com.v2ray.ang.plugin.Plugin
    @NotNull
    public String getVersionName() {
        return (String) this.versionName.getValue();
    }
}
