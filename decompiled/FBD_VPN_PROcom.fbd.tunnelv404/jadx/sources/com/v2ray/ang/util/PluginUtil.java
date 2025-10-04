package com.v2ray.ang.util;

import android.content.Context;
import android.os.SystemClock;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.Hysteria2Bean;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.fmt.Hysteria2Fmt;
import com.v2ray.ang.handler.SpeedtestManager;
import com.v2ray.ang.service.ProcessService;
import defpackage.AbstractC0586x968d4673;
import defpackage.AbstractC0741xc99a73a4;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.C0396x4a23d5ac;
import java.io.File;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\rJ\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\"\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u001e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u001b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u0019H\u0002J\b\u0010\u001d\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u001e"}, d2 = {"Lcom/v2ray/ang/util/PluginUtil;", "", "<init>", "()V", "HYSTERIA2", "", "procService", "Lcom/v2ray/ang/service/ProcessService;", "getProcService", "()Lcom/v2ray/ang/service/ProcessService;", "procService$delegate", "Lkotlin/Lazy;", "runPlugin", "", "context", "Landroid/content/Context;", "config", "Lcom/v2ray/ang/dto/ProfileItem;", "socksPort", "", "(Landroid/content/Context;Lcom/v2ray/ang/dto/ProfileItem;Ljava/lang/Integer;)V", "stopPlugin", "realPingHy2", "", "genConfigHy2", "Ljava/io/File;", "genCmdHy2", "", "configFile", "stopHy2", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PluginUtil {

    @NotNull
    private static final String HYSTERIA2 = new ObfuscatedString(new long[]{-1323165123948821729L, 8176243740123202192L, -6470785872127771085L}).toString();

    @NotNull
    public static final PluginUtil INSTANCE = new PluginUtil();

    /* renamed from: procService$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy procService = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(23));

    private PluginUtil() {
    }

    private final List<String> genCmdHy2(Context context, File configFile) {
        return CollectionsKt__CollectionsKt.mutableListOf(new File(context.getApplicationInfo().nativeLibraryDir, new ObfuscatedString(new long[]{347336404197537925L, 1600297840258472053L, -545501359047874858L}).toString()).getAbsolutePath(), new ObfuscatedString(new long[]{5239539833824170548L, 1508371913821198541L, -3960479979623133269L, 749656852211329222L}).toString(), new ObfuscatedString(new long[]{-8730142421414493047L, -3449551239811575309L}).toString(), configFile.getAbsolutePath(), new ObfuscatedString(new long[]{-719599954694192387L, -886008926018628565L, -3654066150460388958L}).toString(), new ObfuscatedString(new long[]{-8304555658898677228L, -6021007316480919847L}).toString(), new ObfuscatedString(new long[]{5325078197808190240L, 7218925949365747551L}).toString());
    }

    private final File genConfigHy2(Context context, ProfileItem config2, int socksPort) {
        new ObfuscatedString(new long[]{-6564700848415214730L, 4402205859943463280L, -4801742530922584208L}).toString();
        new ObfuscatedString(new long[]{6215373464090574866L, -4610207113605829575L, -4133985306894858223L, 1753360537565579950L, 3792211250911392773L}).toString();
        Hysteria2Bean nativeConfig = Hysteria2Fmt.INSTANCE.toNativeConfig(config2, socksPort);
        if (nativeConfig == null) {
            return null;
        }
        File file = new File(context.getNoBackupFilesDir(), "hy2_" + SystemClock.elapsedRealtime() + ".json");
        new ObfuscatedString(new long[]{-670503433265142699L, 8975098857603077311L, 5757651100479815297L}).toString();
        file.getAbsolutePath();
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        JsonUtil jsonUtil = JsonUtil.INSTANCE;
        AbstractC0741xc99a73a4.writeText$default(file, jsonUtil.toJson(nativeConfig), null, 2, null);
        new ObfuscatedString(new long[]{-8605816838835636000L, -1510384917160810673L, -2858798930146797287L}).toString();
        jsonUtil.toJson(nativeConfig);
        return file;
    }

    private final ProcessService getProcService() {
        return (ProcessService) procService.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProcessService procService_delegate$lambda$0() {
        return new ProcessService();
    }

    private final void stopHy2() {
        try {
            new ObfuscatedString(new long[]{6208934269402899442L, -5533687227640826311L, 6636936491869479793L}).toString();
            new ObfuscatedString(new long[]{-944720457634891666L, -4217257356712047328L, -2562919499048313780L, 7909278868941847994L}).toString();
            ProcessService procService2 = getProcService();
            if (procService2 != null) {
                procService2.stopProcess();
            }
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-2411444117403269280L, 7778054775398735410L, 4614784927503614988L}).toString();
            new ObfuscatedString(new long[]{-244076200642021832L, -6902020235872778149L, 1673497332395376936L, -7224313897939563685L, 4206498660556235616L}).toString();
        }
    }

    public final long realPingHy2(@NotNull Context context, @Nullable ProfileItem config2) {
        EConfigType configType;
        int findFreePort;
        File genConfigHy2;
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-1386853133171425169L, -588828488059897031L}).toString());
        new ObfuscatedString(new long[]{-1119378304319848685L, 5902487628863438360L, 2620609960188807624L}).toString();
        new ObfuscatedString(new long[]{4634294453470218576L, 9065243567365001166L, 1115665666020324494L}).toString();
        if (config2 == null || (configType = config2.getConfigType()) == null || !configType.equals(EConfigType.HYSTERIA2) || (genConfigHy2 = genConfigHy2(context, config2, (findFreePort = Utils.INSTANCE.findFreePort(AbstractC0586x968d4673.listOf(0))))) == null) {
            return -1L;
        }
        List<String> genCmdHy2 = genCmdHy2(context, genConfigHy2);
        ProcessService processService = new ProcessService();
        processService.runProcess(context, genCmdHy2);
        Thread.sleep(1000L);
        Pair<Long, String> testConnection = SpeedtestManager.INSTANCE.testConnection(context, findFreePort);
        processService.stopProcess();
        return testConnection.getFirst().longValue();
    }

    public final void runPlugin(@NotNull Context context, @Nullable ProfileItem config2, @Nullable Integer socksPort) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{4427635470991780706L, -2914853542121043541L}).toString());
        new ObfuscatedString(new long[]{32652737251879726L, -494388770880207930L, -8754963160010065264L}).toString();
        new ObfuscatedString(new long[]{8959198148497525999L, 4098833737953494963L, -9025286783440508622L, 1433201902815990523L, 4602842064932729131L}).toString();
        if (config2 == null) {
            new ObfuscatedString(new long[]{-7558362639927723175L, 4823811833136900677L, 2588591609328108951L}).toString();
            new ObfuscatedString(new long[]{-8056537981769645636L, 8591464179499988908L, -3350775027047944582L, 5522131704460310198L, 5966716004929132638L, -162884162489817204L}).toString();
            return;
        }
        try {
            if (config2.getConfigType() == EConfigType.HYSTERIA2) {
                if (socksPort == null) {
                    new ObfuscatedString(new long[]{6288901628600117470L, 7079315714562915684L, 5917025954076700659L}).toString();
                    new ObfuscatedString(new long[]{956042034011984031L, -8126115018235880503L, -6331073285934562515L, 1592237853093936945L, -2174735460433051832L, -2570737310872187239L}).toString();
                    return;
                }
                new ObfuscatedString(new long[]{-9177934725775963677L, 765060055898952853L, 851307394879331211L}).toString();
                new ObfuscatedString(new long[]{4787491523890385093L, -6701190676626638571L, -7381855630694443049L, 1670169654094188395L}).toString();
                File genConfigHy2 = genConfigHy2(context, config2, socksPort.intValue());
                if (genConfigHy2 == null) {
                    return;
                }
                getProcService().runProcess(context, genCmdHy2(context, genConfigHy2));
            }
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{3186066314460491518L, 4550712038915466419L, 799611210979544137L}).toString();
            new ObfuscatedString(new long[]{8130489992292892786L, 704538177174489921L, 5550298048173672955L, -1552510611206282971L}).toString();
        }
    }

    public final void stopPlugin() {
        stopHy2();
    }
}
