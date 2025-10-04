package com.v2ray.ang.handler;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.util.HttpUtil;
import defpackage.AbstractC0892xc141c517;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Ljava/io/File;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.handler.UpdateCheckerManager$downloadApk$2", f = "UpdateCheckerManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class UpdateCheckerManager$downloadApk$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super File>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ String $downloadUrl;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateCheckerManager$downloadApk$2(String str, Context context, Continuation<? super UpdateCheckerManager$downloadApk$2> continuation) {
        super(2, continuation);
        this.$downloadUrl = str;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UpdateCheckerManager$downloadApk$2(this.$downloadUrl, this.$context, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                HttpURLConnection createProxyConnection = HttpUtil.INSTANCE.createProxyConnection(this.$downloadUrl, SettingsManager.INSTANCE.getHttpPort(), 10000, 10000, true);
                try {
                    if (createProxyConnection != null) {
                        try {
                            File file = new File(this.$context.getCacheDir(), new ObfuscatedString(new long[]{-7732619448469367109L, 3647581177798693623L, 7282371620677609975L}).toString());
                            new ObfuscatedString(new long[]{-987069930950505880L, -3646425265873627306L, -6646208527046747798L}).toString();
                            file.getAbsolutePath();
                            FileOutputStream fileOutputStream = new FileOutputStream(file);
                            try {
                                InputStream inputStream = createProxyConnection.getInputStream();
                                try {
                                    Intrinsics.checkNotNull(inputStream);
                                    ByteStreamsKt.copyTo$default(inputStream, fileOutputStream, 0, 2, null);
                                    CloseableKt.closeFinally(inputStream, null);
                                    CloseableKt.closeFinally(fileOutputStream, null);
                                    new ObfuscatedString(new long[]{5613761450498942713L, -8119495375004975910L, 7746268025608683481L}).toString();
                                    new ObfuscatedString(new long[]{-2259213383163474195L, 9025211994309433437L, 5663050293234739766L, -874775826964446616L}).toString();
                                    try {
                                        createProxyConnection.disconnect();
                                    } catch (Exception e) {
                                        new ObfuscatedString(new long[]{-3967866316975244626L, 6588956730074467539L, 8614923239014832114L}).toString();
                                        e.getMessage();
                                    }
                                    return file;
                                } finally {
                                }
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    CloseableKt.closeFinally(fileOutputStream, th);
                                    throw th2;
                                }
                            }
                        } catch (Exception e2) {
                            new ObfuscatedString(new long[]{-6825528845950225100L, 191427733755608064L, -5890388823838411500L}).toString();
                            e2.getMessage();
                            try {
                                createProxyConnection.disconnect();
                            } catch (Exception e3) {
                                new ObfuscatedString(new long[]{8078921481523119733L, -1383613095494908142L, -4654619710387892747L}).toString();
                                e3.getMessage();
                            }
                            return null;
                        }
                    } else {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{5925300661939642003L, -3985083918519691073L, 8861759391962345620L, 8738170578531309049L, 7020510331076281423L}).toString());
                    }
                } catch (Throwable th3) {
                    try {
                        createProxyConnection.disconnect();
                    } catch (Exception e4) {
                        new ObfuscatedString(new long[]{-299051778936646817L, -3211162044948987981L, -5182988046418127682L}).toString();
                        e4.getMessage();
                    }
                    throw th3;
                }
            } catch (Exception e5) {
                new ObfuscatedString(new long[]{-2434638005095126537L, -113994999809819150L, -5991944530027367809L}).toString();
                e5.getMessage();
                return null;
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-8267435119716051150L, 7279614053964410807L, -6244414981179811487L, 1117386638902235536L, 7293491203795497665L, -5741222913839259903L, -4606413458951219637L}).toString());
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super File> continuation) {
        return ((UpdateCheckerManager$downloadApk$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
