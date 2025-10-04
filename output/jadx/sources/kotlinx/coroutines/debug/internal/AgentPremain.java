package kotlinx.coroutines.debug.internal;

import android.annotation.SuppressLint;
import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.Instrumentation;
import java.security.ProtectionDomain;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sun.misc.Signal;
import sun.misc.SignalHandler;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001\tJ!\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/debug/internal/AgentPremain;", "", "", "args", "Ljava/lang/instrument/Instrumentation;", "instrumentation", "", "premain", "(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V", "DebugProbesTransformer", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"all"})
@IgnoreJRERequirement
/* loaded from: classes3.dex */
public final class AgentPremain {

    @NotNull
    public static final AgentPremain INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final boolean f1865xfbe0c504;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001JC\u0010\f\u001a\u0004\u0018\u00010\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/debug/internal/AgentPremain$DebugProbesTransformer;", "Ljava/lang/instrument/ClassFileTransformer;", "Ljava/lang/ClassLoader;", "loader", "", "className", "Ljava/lang/Class;", "classBeingRedefined", "Ljava/security/ProtectionDomain;", "protectionDomain", "", "classfileBuffer", "transform", "(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DebugProbesTransformer implements ClassFileTransformer {

        @NotNull
        public static final DebugProbesTransformer INSTANCE = new Object();

        @Nullable
        public byte[] transform(@Nullable ClassLoader loader, @NotNull String className, @Nullable Class<?> classBeingRedefined, @NotNull ProtectionDomain protectionDomain, @Nullable byte[] classfileBuffer) {
            if (loader != null && Intrinsics.areEqual(className, "kotlin/coroutines/jvm/internal/DebugProbesKt")) {
                AgentInstallationType.INSTANCE.setInstalledStatically$kotlinx_coroutines_core(true);
                return ByteStreamsKt.readBytes(loader.getResourceAsStream("DebugProbesKt.bin"));
            }
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, kotlinx.coroutines.debug.internal.AgentPremain] */
    static {
        Object m1764constructorimpl;
        boolean enableCreationStackTraces$kotlinx_coroutines_core;
        Boolean bool;
        Object obj = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            String property = System.getProperty("kotlinx.coroutines.debug.enable.creation.stack.trace");
            if (property != null) {
                bool = Boolean.valueOf(Boolean.parseBoolean(property));
            } else {
                bool = null;
            }
            m1764constructorimpl = Result.m1764constructorimpl(bool);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
        }
        if (!Result.m1769isFailureimpl(m1764constructorimpl)) {
            obj = m1764constructorimpl;
        }
        Boolean bool2 = (Boolean) obj;
        if (bool2 != null) {
            enableCreationStackTraces$kotlinx_coroutines_core = bool2.booleanValue();
        } else {
            enableCreationStackTraces$kotlinx_coroutines_core = DebugProbesImpl.INSTANCE.getEnableCreationStackTraces$kotlinx_coroutines_core();
        }
        f1865xfbe0c504 = enableCreationStackTraces$kotlinx_coroutines_core;
    }

    @JvmStatic
    public static final void premain(@Nullable String args, @NotNull Instrumentation instrumentation) {
        AgentInstallationType.INSTANCE.setInstalledStatically$kotlinx_coroutines_core(true);
        instrumentation.addTransformer(DebugProbesTransformer.INSTANCE);
        DebugProbesImpl debugProbesImpl = DebugProbesImpl.INSTANCE;
        debugProbesImpl.setEnableCreationStackTraces$kotlinx_coroutines_core(f1865xfbe0c504);
        debugProbesImpl.install$kotlinx_coroutines_core();
        INSTANCE.getClass();
        m2304xfbe0c504();
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static void m2304xfbe0c504() {
        try {
            Signal.handle(new Signal("TRAP"), new SignalHandler() { // from class: 뎻땐돨땤뒘땦뒨땩득땥땻듸뎨땅듸뒨돶두뒾땡딁득뒼딞뒉땝도뒵돶땩됫듰돶딨땩듔딎뒾딻돛돳뒬뒛딎딨뒐디듼뒷뒨뒝딅땣뒾돛뒋땯딠땍뎡둣뒐뒀땮뎰듻땟땹둘딨땵땰뒵돠딌딁뒬둥뒾딨될됴뒷땝땵딝땟딻둠따땻뒀뎽뒝땠딟듽따땍뒬딸땹땥땵돵땁돨땳땡땳뒘딝딠돤듽도뎨땱딌둬됫땩뒾땻둡딝땄뒻뒝땸
            });
        } catch (Throwable unused) {
        }
    }
}
