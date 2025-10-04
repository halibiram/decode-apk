package kotlin.reflect;

import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC1197x89633db9;
import defpackage.C0846x640b705a;
import defpackage.C1019x3c6cde98;
import defpackage.C1252xfbbe384d;
import defpackage.C1261x2b375570;
import defpackage.C1298xb4a7d8b3;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.SinceKotlin;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.KTypeBase;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import okhttp3.internal.CommonHttpUrl;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\"\u001e\u0010\u0006\u001a\u00020\u0001*\u00020\u00008FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/KType;", "Ljava/lang/reflect/Type;", "getJavaType", "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;", "getJavaType$annotations", "(Lkotlin/reflect/KType;)V", "javaType", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTypesJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypesJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,230:1\n1#2:231\n1563#3:232\n1634#3,3:233\n1563#3:236\n1634#3,3:237\n1563#3:240\n1634#3,3:241\n*S KotlinDebug\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypesJVMKt\n*L\n69#1:232\n69#1:233,3\n71#1:236\n71#1:237,3\n77#1:240\n77#1:241,3\n*E\n"})
/* loaded from: classes3.dex */
public final class TypesJVMKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[KVariance.values().length];
            try {
                iArr[KVariance.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KVariance.INVARIANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KVariance.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final String access$typeToString(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                Sequence generateSequence = SequencesKt__SequencesKt.generateSequence(type, C1261x2b375570.f5673xfbe0c504);
                return ((Class) SequencesKt___SequencesKt.last(generateSequence)).getName() + AbstractC1197x89633db9.repeat(CommonHttpUrl.PATH_SEGMENT_ENCODE_SET_URI, SequencesKt___SequencesKt.count(generateSequence));
            }
            String name = cls.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            return name;
        }
        return type.toString();
    }

    @NotNull
    public static final Type getJavaType(@NotNull KType kType) {
        Type javaType;
        Intrinsics.checkNotNullParameter(kType, "<this>");
        if ((kType instanceof KTypeBase) && (javaType = ((KTypeBase) kType).getJavaType()) != null) {
            return javaType;
        }
        return m2041xfbe0c504(kType, false);
    }

    @LowPriorityInOverloadResolution
    @SinceKotlin(version = "1.4")
    @ExperimentalStdlibApi
    public static /* synthetic */ void getJavaType$annotations(KType kType) {
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Type m2041xfbe0c504(KType kType, boolean z) {
        Class javaClass;
        int i;
        KClassifier classifier = kType.getClassifier();
        if (classifier instanceof KTypeParameter) {
            return new C1252xfbbe384d((KTypeParameter) classifier);
        }
        if (classifier instanceof KClass) {
            KClass kClass = (KClass) classifier;
            if (z) {
                javaClass = JvmClassMappingKt.getJavaObjectType(kClass);
            } else {
                javaClass = JvmClassMappingKt.getJavaClass(kClass);
            }
            List<KTypeProjection> arguments = kType.getArguments();
            if (arguments.isEmpty()) {
                return javaClass;
            }
            if (javaClass.isArray()) {
                if (javaClass.getComponentType().isPrimitive()) {
                    return javaClass;
                }
                KTypeProjection kTypeProjection = (KTypeProjection) CollectionsKt___CollectionsKt.singleOrNull((List) arguments);
                if (kTypeProjection != null) {
                    KVariance variance = kTypeProjection.getVariance();
                    KType kType2 = kTypeProjection.getAndroidx.savedstate.serialization.ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY java.lang.String();
                    if (variance == null) {
                        i = -1;
                    } else {
                        i = WhenMappings.$EnumSwitchMapping$0[variance.ordinal()];
                    }
                    if (i != -1 && i != 1) {
                        if (i != 2 && i != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        Intrinsics.checkNotNull(kType2);
                        Type m2041xfbe0c504 = m2041xfbe0c504(kType2, false);
                        if (!(m2041xfbe0c504 instanceof Class)) {
                            return new C0846x640b705a(m2041xfbe0c504);
                        }
                        return javaClass;
                    }
                    return javaClass;
                }
                throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: " + kType);
            }
            return m2042x3271d0aa(javaClass, arguments);
        }
        throw new UnsupportedOperationException("Unsupported type classifier: " + kType);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final C1019x3c6cde98 m2042x3271d0aa(Class cls, List list) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            List list2 = list;
            ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(m2043x1378447b((KTypeProjection) it.next()));
            }
            return new C1019x3c6cde98(cls, null, arrayList);
        }
        if (Modifier.isStatic(cls.getModifiers())) {
            List list3 = list;
            ArrayList arrayList2 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list3, 10));
            Iterator it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList2.add(m2043x1378447b((KTypeProjection) it2.next()));
            }
            return new C1019x3c6cde98(cls, declaringClass, arrayList2);
        }
        int length = cls.getTypeParameters().length;
        C1019x3c6cde98 m2042x3271d0aa = m2042x3271d0aa(declaringClass, list.subList(length, list.size()));
        List subList = list.subList(0, length);
        ArrayList arrayList3 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(subList, 10));
        Iterator it3 = subList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(m2043x1378447b((KTypeProjection) it3.next()));
        }
        return new C1019x3c6cde98(cls, m2042x3271d0aa, arrayList3);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final Type m2043x1378447b(KTypeProjection kTypeProjection) {
        KVariance variance = kTypeProjection.getVariance();
        if (variance == null) {
            return C1298xb4a7d8b3.f5718x1378447b.getSTAR();
        }
        KType type = kTypeProjection.getType();
        Intrinsics.checkNotNull(type);
        int i = WhenMappings.$EnumSwitchMapping$0[variance.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return new C1298xb4a7d8b3(m2041xfbe0c504(type, true), null);
                }
                throw new NoWhenBranchMatchedException();
            }
            return m2041xfbe0c504(type, true);
        }
        return new C1298xb4a7d8b3(null, m2041xfbe0c504(type, true));
    }
}
