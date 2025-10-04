package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SerializersCacheKt;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.modules.SerializersModule;

/* renamed from: 땵따뒛둬득땳뎠땔땀땍드뒹딄뒛땳딜딀둑듐둘돤딀딐딄돵돳뒷땭듟돝뒷뒨돛땩둔둘됐딅뒝딎뒛땜딨딄딟땫뒬땤땮땍땐뒝뎹둑듰땳딀뎡돷듰뒨딐뎬땤듻땮뒷땭돛땔딅딸듸딐듟딐땱뎬뎠둑둡땜디땁된둘딎드뒬딜듐뒈땍딄둡땨딤땥땱뎡땬돼돵땔땨둬뎸땻땅딅든뎻둑되뒝돰뒵뒐땠딌딜드돰딄됴돸드뒝땵땰, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1312xe0b2b7ff {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final C0648x4ba9bb0c f5754xfbe0c504 = new C0648x4ba9bb0c(19);

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final C0538x3d8fea2c f5755x3271d0aa = new C0538x3d8fea2c(7);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005e A[Catch: all -> 0x002f, TRY_LEAVE, TryCatch #2 {all -> 0x002f, blocks: (B:11:0x002b, B:12:0x0056, B:14:0x005e, B:16:0x0044), top: B:10:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0052 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0053 -> B:12:0x0056). Please report as a decompilation issue!!! */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m4336xfbe0c504(ReceiveChannel receiveChannel, Function1 function1, Continuation continuation) {
        C0536x246396ea c0536x246396ea;
        int i;
        ReceiveChannel receiveChannel2;
        Throwable th;
        ChannelIterator it;
        Function1 function12;
        Object hasNext;
        if (continuation instanceof C0536x246396ea) {
            C0536x246396ea c0536x246396ea2 = (C0536x246396ea) continuation;
            int i2 = c0536x246396ea2.f4086x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0536x246396ea2.f4086x9738a56c = i2 - Integer.MIN_VALUE;
                c0536x246396ea = c0536x246396ea2;
                Object obj = c0536x246396ea.f4085x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0536x246396ea.f4086x9738a56c;
                if (i == 0) {
                    if (i == 1) {
                        ChannelIterator channelIterator = c0536x246396ea.f4084x1378447b;
                        receiveChannel2 = c0536x246396ea.f4083x3271d0aa;
                        Function1 function13 = c0536x246396ea.f4082xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                            ChannelIterator channelIterator2 = channelIterator;
                            if (!((Boolean) obj).booleanValue()) {
                                function13.invoke(channelIterator2.next());
                                function12 = function13;
                                it = channelIterator2;
                                c0536x246396ea.f4082xfbe0c504 = function12;
                                c0536x246396ea.f4083x3271d0aa = receiveChannel2;
                                c0536x246396ea.f4084x1378447b = it;
                                c0536x246396ea.f4086x9738a56c = 1;
                                hasNext = it.hasNext(c0536x246396ea);
                                if (hasNext != coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                function13 = function12;
                                obj = hasNext;
                                channelIterator2 = it;
                                if (!((Boolean) obj).booleanValue()) {
                                    InlineMarker.finallyStart(1);
                                    ChannelsKt.cancelConsumed(receiveChannel2, null);
                                    InlineMarker.finallyEnd(1);
                                    return Unit.INSTANCE;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                InlineMarker.finallyStart(1);
                                ChannelsKt.cancelConsumed(receiveChannel2, th);
                                InlineMarker.finallyEnd(1);
                                throw th3;
                            }
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        receiveChannel2 = receiveChannel;
                        it = receiveChannel.iterator();
                        function12 = function1;
                        c0536x246396ea.f4082xfbe0c504 = function12;
                        c0536x246396ea.f4083x3271d0aa = receiveChannel2;
                        c0536x246396ea.f4084x1378447b = it;
                        c0536x246396ea.f4086x9738a56c = 1;
                        hasNext = it.hasNext(c0536x246396ea);
                        if (hasNext != coroutine_suspended) {
                        }
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
            }
        }
        c0536x246396ea = new ContinuationImpl(continuation);
        Object obj2 = c0536x246396ea.f4085x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0536x246396ea.f4086x9738a56c;
        if (i == 0) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        if (r0.f4518x1378447b == r4) goto L10;
     */
    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final C0682x8dd9c254 m4337x3271d0aa(Flow flow, Function1 function1, Function2 function2) {
        if (flow instanceof C0682x8dd9c254) {
            C0682x8dd9c254 c0682x8dd9c254 = (C0682x8dd9c254) flow;
            if (c0682x8dd9c254.f4517x3271d0aa == function1) {
            }
        }
        flow = new C0682x8dd9c254(flow, function1, function2);
        return (C0682x8dd9c254) flow;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final KSerializer m4338x1378447b(SerializersModule serializersModule, KType kType, boolean z) {
        KSerializer<Object> kSerializer;
        KSerializer<? extends Object> kSerializer2;
        PolymorphicSerializer polymorphicSerializer;
        KClass<Object> kclass = Platform_commonKt.kclass(kType);
        boolean isMarkedNullable = kType.isMarkedNullable();
        List<KTypeProjection> arguments = kType.getArguments();
        ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(arguments, 10));
        Iterator<T> it = arguments.iterator();
        while (it.hasNext()) {
            arrayList.add(Platform_commonKt.typeOrThrow((KTypeProjection) it.next()));
        }
        if (arrayList.isEmpty()) {
            if (!PlatformKt.isInterface(kclass) || SerializersModule.getContextual$default(serializersModule, kclass, null, 2, null) == null) {
                kSerializer = SerializersCacheKt.findCachedSerializer(kclass, isMarkedNullable);
            }
            kSerializer = null;
        } else {
            if (!serializersModule.getHasInterfaceContextualSerializers()) {
                Object findParametrizedCachedSerializer = SerializersCacheKt.findParametrizedCachedSerializer(kclass, arrayList, isMarkedNullable);
                if (Result.m1769isFailureimpl(findParametrizedCachedSerializer)) {
                    findParametrizedCachedSerializer = null;
                }
                kSerializer = (KSerializer) findParametrizedCachedSerializer;
            }
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        if (arrayList.isEmpty()) {
            kSerializer2 = SerializersKt.serializerOrNull(kclass);
            if (kSerializer2 == null && (kSerializer2 = SerializersModule.getContextual$default(serializersModule, kclass, null, 2, null)) == null) {
                if (PlatformKt.isInterface(kclass)) {
                    polymorphicSerializer = new PolymorphicSerializer(kclass);
                    kSerializer2 = polymorphicSerializer;
                }
                kSerializer2 = null;
            }
            if (kSerializer2 != null) {
                return null;
            }
            if (isMarkedNullable) {
                return BuiltinSerializersKt.getNullable(kSerializer2);
            }
            Intrinsics.checkNotNull(kSerializer2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.SerializersKt__SerializersKt.nullable?>");
            return kSerializer2;
        }
        List<KSerializer<Object>> serializersForParameters = SerializersKt.serializersForParameters(serializersModule, arrayList, z);
        if (serializersForParameters == null) {
            return null;
        }
        KSerializer<? extends Object> parametrizedSerializerOrNull = SerializersKt.parametrizedSerializerOrNull(kclass, serializersForParameters, new C0350x95f25580(arrayList, 18));
        if (parametrizedSerializerOrNull == null) {
            kSerializer2 = serializersModule.getContextual(kclass, serializersForParameters);
            if (kSerializer2 == null) {
                if (PlatformKt.isInterface(kclass)) {
                    polymorphicSerializer = new PolymorphicSerializer(kclass);
                    kSerializer2 = polymorphicSerializer;
                }
                kSerializer2 = null;
            }
        } else {
            kSerializer2 = parametrizedSerializerOrNull;
        }
        if (kSerializer2 != null) {
        }
    }
}
