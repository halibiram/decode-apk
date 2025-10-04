package defpackage;

import androidx.camera.core.Camera;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import coil3.Image;
import coil3.disk.DiskLruCache;
import coil3.request.ImageRequestsKt;
import coil3.transform.Transformation;
import io.github.g00fy2.quickie.QRScannerActivity;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.collections.AbstractMap;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.TypeReference;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.sequences.Sequence;
import kotlin.text.MatcherMatchResult$groups$1;
import kotlin.text.Typography;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.serialization.ContextualSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TripleSerializer;
import okio.ForwardingFileSystem;
import okio.Path;

/* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0346x75d576dc implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3734xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3735x3271d0aa;

    public /* synthetic */ C0346x75d576dc(Object obj, int i) {
        this.f3734xfbe0c504 = i;
        this.f3735x3271d0aa = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object it) {
        String valueOf;
        SerialDescriptor descriptor;
        String valueOf2;
        int i;
        Throwable th = null;
        TypeReference typeReference = null;
        r3 = null;
        List<Annotation> list = null;
        Object obj = this.f3735x3271d0aa;
        switch (this.f3734xfbe0c504) {
            case 0:
                if (it == ((AbstractCollection) obj)) {
                    return "(this Collection)";
                }
                return String.valueOf(it);
            case 1:
                Map.Entry it2 = (Map.Entry) it;
                AbstractMap.Companion companion = AbstractMap.Companion;
                Intrinsics.checkNotNullParameter(it2, "it");
                AbstractMap abstractMap = (AbstractMap) obj;
                abstractMap.getClass();
                StringBuilder sb = new StringBuilder();
                Object key = it2.getKey();
                String str = "(this Map)";
                if (key == abstractMap) {
                    valueOf = "(this Map)";
                } else {
                    valueOf = String.valueOf(key);
                }
                sb.append(valueOf);
                sb.append('=');
                Object value = it2.getValue();
                if (value != abstractMap) {
                    str = String.valueOf(value);
                }
                sb.append(str);
                return sb.toString();
            case 2:
                Throwable th2 = (Throwable) it;
                for (ReceiveChannel receiveChannel : (ReceiveChannel[]) obj) {
                    try {
                        ChannelsKt.cancelConsumed(receiveChannel, th2);
                    } catch (Throwable th3) {
                        if (th == null) {
                            th = th3;
                        } else {
                            AbstractC0720xaa9ccb5a.addSuppressed(th, th3);
                        }
                    }
                }
                if (th == null) {
                    return Unit.INSTANCE;
                }
                throw th;
            case 3:
                ClassSerialDescriptorBuilder buildSerialDescriptor = (ClassSerialDescriptorBuilder) it;
                Intrinsics.checkNotNullParameter(buildSerialDescriptor, "$this$buildSerialDescriptor");
                KSerializer kSerializer = ((ContextualSerializer) obj).f2508x3271d0aa;
                if (kSerializer != null && (descriptor = kSerializer.getDescriptor()) != null) {
                    list = descriptor.getAnnotations();
                }
                if (list == null) {
                    list = CollectionsKt__CollectionsKt.emptyList();
                }
                buildSerialDescriptor.setAnnotations(list);
                return Unit.INSTANCE;
            case 4:
                ((DiskLruCache) obj).f564x1aebc6d9 = true;
                return Unit.INSTANCE;
            case 5:
                Path it3 = (Path) it;
                int i2 = ForwardingFileSystem.f3602x3271d0aa;
                Intrinsics.checkNotNullParameter(it3, "it");
                return ((ForwardingFileSystem) obj).onPathResult(it3, "listRecursively");
            case 6:
                CompletableFuture completableFuture = (CompletableFuture) obj;
                Throwable th4 = (Throwable) it;
                if (th4 == null) {
                    completableFuture.complete(Unit.INSTANCE);
                } else {
                    completableFuture.completeExceptionally(th4);
                }
                return Unit.INSTANCE;
            case 7:
                return (Image) obj;
            case 8:
                int i3 = ImageRequestsKt.DEFAULT_CROSSFADE_MILLIS;
                StringBuilder sb2 = new StringBuilder();
                Ref.IntRef intRef = (Ref.IntRef) obj;
                int i4 = intRef.element;
                intRef.element = 1 + i4;
                sb2.append(i4);
                sb2.append(':');
                sb2.append(((Transformation) it).getCacheKey());
                return sb2.toString();
            case 9:
                return ((MatcherMatchResult$groups$1) obj).get(((Integer) it).intValue());
            case 10:
                ClassSerialDescriptorBuilder buildSerialDescriptor2 = (ClassSerialDescriptorBuilder) it;
                Intrinsics.checkNotNullParameter(buildSerialDescriptor2, "$this$buildSerialDescriptor");
                buildSerialDescriptor2.setAnnotations(((ObjectSerializer) obj).f2617x3271d0aa);
                return Unit.INSTANCE;
            case 11:
                int intValue = ((Integer) it).intValue();
                StringBuilder sb3 = new StringBuilder();
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = (PluginGeneratedSerialDescriptor) obj;
                sb3.append(pluginGeneratedSerialDescriptor.getElementName(intValue));
                sb3.append(": ");
                sb3.append(pluginGeneratedSerialDescriptor.getElementDescriptor(intValue).getSerialName());
                return sb3.toString();
            case 12:
                ClassSerialDescriptorBuilder buildSerialDescriptor3 = (ClassSerialDescriptorBuilder) it;
                Intrinsics.checkNotNullParameter(buildSerialDescriptor3, "$this$buildSerialDescriptor");
                ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor3, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE).getDescriptor(), null, false, 12, null);
                StringBuilder sb4 = new StringBuilder("kotlinx.serialization.Polymorphic<");
                PolymorphicSerializer polymorphicSerializer = (PolymorphicSerializer) obj;
                sb4.append(polymorphicSerializer.getBaseClass().getSimpleName());
                sb4.append(Typography.greater);
                ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor3, "value", SerialDescriptorsKt.buildSerialDescriptor$default(sb4.toString(), SerialKind.CONTEXTUAL.INSTANCE, new SerialDescriptor[0], null, 8, null), null, false, 12, null);
                buildSerialDescriptor3.setAnnotations(polymorphicSerializer.f2515x3271d0aa);
                return Unit.INSTANCE;
            case 13:
                boolean booleanValue = ((Boolean) it).booleanValue();
                QRScannerActivity.Companion companion2 = QRScannerActivity.INSTANCE;
                ((Camera) obj).getCameraControl().enableTorch(booleanValue);
                return Unit.INSTANCE;
            case 14:
                Intrinsics.checkNotNullParameter(it, "it");
                return ((Function0) obj).invoke();
            case 15:
                return Boolean.valueOf(((Class) obj).isInstance(it));
            case 16:
                if (it != null) {
                    return it;
                }
                throw new IllegalArgumentException("null element found in " + ((Sequence) obj) + '.');
            case 17:
                IndexedValue it4 = (IndexedValue) it;
                Intrinsics.checkNotNullParameter(it4, "it");
                Boolean bool = (Boolean) ((Function2) obj).invoke(Integer.valueOf(it4.getIndex()), it4.getValue());
                bool.booleanValue();
                return bool;
            case 18:
                return Boolean.valueOf(ArraysKt___ArraysKt.contains((Object[]) obj, it));
            case 19:
                return Boolean.valueOf(((Collection) obj).contains(it));
            case 20:
                return Boolean.valueOf(((List) obj).contains(it));
            case 21:
                int intValue2 = ((Integer) it).intValue();
                StringBuilder sb5 = new StringBuilder();
                SerialDescriptorImpl serialDescriptorImpl = (SerialDescriptorImpl) obj;
                sb5.append(serialDescriptorImpl.getElementName(intValue2));
                sb5.append(": ");
                sb5.append(serialDescriptorImpl.getElementDescriptor(intValue2).getSerialName());
                return sb5.toString();
            case 22:
                Intrinsics.checkNotNullParameter((List) it, "it");
                return (KSerializer) obj;
            case 23:
                ClassSerialDescriptorBuilder buildClassSerialDescriptor = (ClassSerialDescriptorBuilder) it;
                Intrinsics.checkNotNullParameter(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
                TripleSerializer tripleSerializer = (TripleSerializer) obj;
                ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "first", tripleSerializer.f2650xfbe0c504.getDescriptor(), null, false, 12, null);
                ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "second", tripleSerializer.f2651x3271d0aa.getDescriptor(), null, false, 12, null);
                ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "third", tripleSerializer.f2652x1378447b.getDescriptor(), null, false, 12, null);
                return Unit.INSTANCE;
            default:
                KTypeProjection it5 = (KTypeProjection) it;
                TypeReference.Companion companion3 = TypeReference.Companion;
                Intrinsics.checkNotNullParameter(it5, "it");
                ((TypeReference) obj).getClass();
                if (it5.getVariance() == null) {
                    return "*";
                }
                KType type = it5.getType();
                if (type instanceof TypeReference) {
                    typeReference = (TypeReference) type;
                }
                if (typeReference == null || (valueOf2 = typeReference.m1987xfbe0c504(true)) == null) {
                    valueOf2 = String.valueOf(it5.getType());
                }
                KVariance variance = it5.getVariance();
                if (variance == null) {
                    i = -1;
                } else {
                    i = TypeReference.WhenMappings.$EnumSwitchMapping$0[variance.ordinal()];
                }
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            return "out ".concat(valueOf2);
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    return "in ".concat(valueOf2);
                }
                return valueOf2;
        }
    }
}
