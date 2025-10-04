package com.v2ray.ang.handler;

import android.os.Build;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.CheckUpdateResult;
import com.v2ray.ang.dto.GitHubRelease;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.util.HttpUtil;
import com.v2ray.ang.util.JsonUtil;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/v2ray/ang/dto/CheckUpdateResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.handler.UpdateCheckerManager$checkForUpdate$2", f = "UpdateCheckerManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class UpdateCheckerManager$checkForUpdate$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CheckUpdateResult>, Object> {
    final /* synthetic */ boolean $includePreRelease;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateCheckerManager$checkForUpdate$2(boolean z, Continuation<? super UpdateCheckerManager$checkForUpdate$2> continuation) {
        super(2, continuation);
        this.$includePreRelease = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UpdateCheckerManager$checkForUpdate$2(this.$includePreRelease, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String concatUrl;
        GitHubRelease gitHubRelease;
        int compareVersions;
        String downloadUrl;
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.$includePreRelease) {
                concatUrl = new ObfuscatedString(new long[]{-5868312726034894991L, -541445808252596384L, 2374455220815051737L, 4832310528292826659L, -4590208642680434421L, 4514402739451955828L, -1601805588560463125L, 841195520545102621L}).toString();
            } else {
                concatUrl = _ExtKt.concatUrl(new ObfuscatedString(new long[]{-3563362183202050720L, -4479606303459610577L, 4536343869349126628L, -5143137597613947522L, 9181953689696983945L, -2750559859462787776L, -813617665160153153L, -5586700065281601600L}).toString(), new ObfuscatedString(new long[]{3272378327864269850L, -9208466540644175812L}).toString());
            }
            HttpUtil httpUtil = HttpUtil.INSTANCE;
            String urlContent$default = HttpUtil.getUrlContent$default(httpUtil, concatUrl, 5000, 0, 4, null);
            if ((urlContent$default != null && urlContent$default.length() != 0) || (urlContent$default = httpUtil.getUrlContent(concatUrl, 5000, SettingsManager.INSTANCE.getHttpPort())) != null) {
                if (this.$includePreRelease) {
                    gitHubRelease = (GitHubRelease) ArraysKt___ArraysKt.firstOrNull((Object[]) JsonUtil.INSTANCE.fromJson(urlContent$default, GitHubRelease[].class));
                    if (gitHubRelease == null) {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{-5609324962254722846L, 2780788900539785342L, 4995937620402969949L, -2485353041294716497L}).toString());
                    }
                } else {
                    gitHubRelease = (GitHubRelease) JsonUtil.INSTANCE.fromJson(urlContent$default, GitHubRelease.class);
                }
                String removePrefix = StringsKt__StringsKt.removePrefix(gitHubRelease.getTagName(), (CharSequence) new ObfuscatedString(new long[]{3752757868958819610L, 5879399886468609865L}).toString());
                new ObfuscatedString(new long[]{2528375450846520724L, 4448946273766921478L, 5991200396368599784L}).toString();
                UpdateCheckerManager updateCheckerManager = UpdateCheckerManager.INSTANCE;
                compareVersions = updateCheckerManager.compareVersions(removePrefix, new ObfuscatedString(new long[]{-2692631532005400427L, -3058279320184316153L}).toString());
                if (compareVersions > 0) {
                    String str = Build.SUPPORTED_ABIS[0];
                    Intrinsics.checkNotNullExpressionValue(str, new ObfuscatedString(new long[]{-5458863742733988362L, 562957189373703596L}).toString());
                    downloadUrl = updateCheckerManager.getDownloadUrl(gitHubRelease, str);
                    return new CheckUpdateResult(true, removePrefix, gitHubRelease.getBody(), downloadUrl, null, gitHubRelease.getPrerelease(), 16, null);
                }
                return new CheckUpdateResult(false, null, null, null, null, false, 62, null);
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{-4581652789808470769L, -1553831178444829960L, 6096831660557204156L, -7362379702829584004L}).toString());
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-3328518397382443173L, 5105363175843718311L, 5369517839659344372L, 1852143498510024525L, 2412517223637526469L, -5518431305787831100L, 6130926814668418007L}).toString());
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CheckUpdateResult> continuation) {
        return ((UpdateCheckerManager$checkForUpdate$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
