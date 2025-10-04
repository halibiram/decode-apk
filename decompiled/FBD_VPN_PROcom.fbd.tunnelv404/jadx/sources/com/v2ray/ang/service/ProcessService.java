package com.v2ray.ang.service;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u0006\u0010\r\u001a\u00020\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/v2ray/ang/service/ProcessService;", "", "<init>", "()V", "process", "Ljava/lang/Process;", "runProcess", "", "context", "Landroid/content/Context;", "cmd", "", "", "stopProcess", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ProcessService {

    @Nullable
    private Process process;

    public final void runProcess(@NotNull Context context, @NotNull List<String> cmd) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-6374419552407312713L, -2651207483059168539L}).toString());
        Intrinsics.checkNotNullParameter(cmd, new ObfuscatedString(new long[]{-5029444320365727119L, -7568381437753406440L}).toString());
        new ObfuscatedString(new long[]{-4916625402569444195L, 8659835542286228715L, 740550921435821232L}).toString();
        cmd.toString();
        try {
            ProcessBuilder processBuilder = new ProcessBuilder(cmd);
            processBuilder.redirectErrorStream(true);
            this.process = processBuilder.directory(context.getFilesDir()).start();
            BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new ProcessService$runProcess$1(this, null), 3, null);
            new ObfuscatedString(new long[]{7563015477080446308L, 1728695290875009729L, -881459898313275498L}).toString();
            String.valueOf(this.process);
        } catch (Exception e) {
            new ObfuscatedString(new long[]{-3208174781432495314L, 3269248962240122314L, -3037279002715641700L}).toString();
            e.toString();
        }
    }

    public final void stopProcess() {
        try {
            new ObfuscatedString(new long[]{-7107438639424704476L, 8438306369669224737L, 3112607739431263235L}).toString();
            new ObfuscatedString(new long[]{-886429234910687955L, -3543004050053422396L, -5379585392779198249L, -1697585952734010468L}).toString();
            Process process = this.process;
            if (process != null) {
                process.destroy();
            }
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{1886459672459525179L, -6268237101760128359L, -4439859741903647860L}).toString();
            new ObfuscatedString(new long[]{-7833125900085147203L, 8515375767472078749L, -8766949861741111486L, 5641267719918345843L, -1045341005082031055L}).toString();
        }
    }
}
