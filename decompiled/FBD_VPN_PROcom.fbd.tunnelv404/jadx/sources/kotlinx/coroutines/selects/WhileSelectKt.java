package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a/\u0010\u0000\u001a\u00020\u00012\u001f\b\u0004\u0010\u0002\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0006H\u0087H¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"whileSelect", "", "builder", "Lkotlin/Function1;", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWhileSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,29:1\n54#2,5:30\n*S KotlinDebug\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n*L\n27#1:30,5\n*E\n"})
/* loaded from: classes3.dex */
public final class WhileSelectKt {
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x004a -> B:10:0x004d). Please report as a decompilation issue!!! */
    @kotlinx.coroutines.ExperimentalCoroutinesApi
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final java.lang.Object whileSelect(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super kotlinx.coroutines.selects.SelectBuilder<? super java.lang.Boolean>, kotlin.Unit> r4, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            boolean r0 = r5 instanceof defpackage.C1297x51a0af5e
            if (r0 == 0) goto L13
            r0 = r5
            땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼 r0 = (defpackage.C1297x51a0af5e) r0
            int r1 = r0.f5717x1378447b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5717x1378447b = r1
            goto L18
        L13:
            땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼 r0 = new 땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f5716x3271d0aa
            java.lang.Object r1 = defpackage.AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()
            int r2 = r0.f5717x1378447b
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kotlin.jvm.functions.Function1 r4 = r0.f5715xfbe0c504
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4d
        L2b:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L33:
            kotlin.ResultKt.throwOnFailure(r5)
        L36:
            kotlinx.coroutines.selects.SelectImplementation r5 = new kotlinx.coroutines.selects.SelectImplementation
            kotlin.coroutines.CoroutineContext r2 = r0.getContext()
            r5.<init>(r2)
            r4.invoke(r5)
            r0.f5715xfbe0c504 = r4
            r0.f5717x1378447b = r3
            java.lang.Object r5 = r5.doSelect(r0)
            if (r5 != r1) goto L4d
            return r1
        L4d:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 != 0) goto L36
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.WhileSelectKt.whileSelect(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
