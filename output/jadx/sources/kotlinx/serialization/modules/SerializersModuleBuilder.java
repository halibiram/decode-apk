package kotlinx.serialization.modules;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0964x2631a5ef;
import defpackage.C0888x306ec7c1;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.modules.ContextualProvider;
import kotlinx.serialization.modules.SerializersModuleCollector;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001B\t\b\u0001¢\u0006\u0004\b\u0002\u0010\u0003J5\u0010\u000b\u001a\u00020\n\"\b\b\u0000\u0010\u0005*\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJX\u0010\u000b\u001a\u00020\n\"\b\b\u0000\u0010\u0005*\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062/\u0010\u0012\u001a+\u0012\u001d\u0012\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\rH\u0016¢\u0006\u0004\b\u000b\u0010\u0013JM\u0010\u0019\u001a\u00020\n\"\b\b\u0000\u0010\u0014*\u00020\u0004\"\b\b\u0001\u0010\u0015*\u00028\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\bH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJR\u0010\u001e\u001a\u00020\n\"\b\b\u0000\u0010\u0014*\u00020\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062)\u0010\u001d\u001a%\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001b\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001c0\rH\u0016¢\u0006\u0004\b\u001e\u0010\u0013JT\u0010#\u001a\u00020\n\"\b\b\u0000\u0010\u0014*\u00020\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062+\u0010\"\u001a'\u0012\u0015\u0012\u0013\u0018\u00010\u001f¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b( \u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010!0\rH\u0016¢\u0006\u0004\b#\u0010\u0013J\u0015\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J9\u0010,\u001a\u00020\n\"\b\b\u0000\u0010\u0005*\u00020\u00042\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u0012\u001a\u00020)2\b\b\u0002\u0010+\u001a\u00020*H\u0001¢\u0006\u0004\b,\u0010-JZ\u0010.\u001a\u00020\n\"\b\b\u0000\u0010\u0014*\u00020\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062)\u0010\u001d\u001a%\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001b\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001c0\r2\u0006\u0010+\u001a\u00020*H\u0001¢\u0006\u0004\b.\u0010/J\\\u00100\u001a\u00020\n\"\b\b\u0000\u0010\u0014*\u00020\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062+\u0010\"\u001a'\u0012\u0015\u0012\u0013\u0018\u00010\u001f¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b( \u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010!0\r2\u0006\u0010+\u001a\u00020*H\u0001¢\u0006\u0004\b0\u0010/JW\u00103\u001a\u00020\n\"\b\b\u0000\u0010\u0014*\u00020\u0004\"\b\b\u0001\u0010\u0015*\u00028\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\f\u00101\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062\f\u00102\u001a\b\u0012\u0004\u0012\u00028\u00010\b2\b\b\u0002\u0010+\u001a\u00020*H\u0001¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020$H\u0001¢\u0006\u0004\b5\u00106¨\u00067"}, d2 = {"Lkotlinx/serialization/modules/SerializersModuleBuilder;", "Lkotlinx/serialization/modules/SerializersModuleCollector;", "<init>", "()V", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/reflect/KClass;", "kClass", "Lkotlinx/serialization/KSerializer;", "serializer", "", "contextual", "(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "typeArgumentsSerializers", "provider", "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V", "Base", "Sub", "baseClass", "actualClass", "actualSerializer", "polymorphic", "(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V", "value", "Lkotlinx/serialization/SerializationStrategy;", "defaultSerializerProvider", "polymorphicDefaultSerializer", "", "className", "Lkotlinx/serialization/DeserializationStrategy;", "defaultDeserializerProvider", "polymorphicDefaultDeserializer", "Lkotlinx/serialization/modules/SerializersModule;", "module", "include", "(Lkotlinx/serialization/modules/SerializersModule;)V", "forClass", "Lkotlinx/serialization/modules/ContextualProvider;", "", "allowOverwrite", "registerSerializer", "(Lkotlin/reflect/KClass;Lkotlinx/serialization/modules/ContextualProvider;Z)V", "registerDefaultPolymorphicSerializer", "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Z)V", "registerDefaultPolymorphicDeserializer", "concreteClass", "concreteSerializer", "registerPolymorphicSerializer", "(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;Z)V", "build", "()Lkotlinx/serialization/modules/SerializersModule;", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSerializersModuleBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuilder\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,272:1\n381#2,7:273\n381#2,7:280\n1#3:287\n*S KotlinDebug\n*F\n+ 1 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuilder\n*L\n197#1:273,7\n199#1:280,7\n*E\n"})
/* loaded from: classes3.dex */
public final class SerializersModuleBuilder implements SerializersModuleCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final HashMap f2680xfbe0c504 = new HashMap();

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final HashMap f2681x3271d0aa = new HashMap();

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final HashMap f2682x1378447b = new HashMap();

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final HashMap f2683x75d576dc = new HashMap();

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final HashMap f2684x9738a56c = new HashMap();

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public boolean f2685x9e171bf9;

    @PublishedApi
    public SerializersModuleBuilder() {
    }

    public static /* synthetic */ void registerPolymorphicSerializer$default(SerializersModuleBuilder serializersModuleBuilder, KClass kClass, KClass kClass2, KSerializer kSerializer, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        serializersModuleBuilder.registerPolymorphicSerializer(kClass, kClass2, kSerializer, z);
    }

    public static /* synthetic */ void registerSerializer$default(SerializersModuleBuilder serializersModuleBuilder, KClass kClass, ContextualProvider contextualProvider, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        serializersModuleBuilder.registerSerializer(kClass, contextualProvider, z);
    }

    @PublishedApi
    @NotNull
    public final SerializersModule build() {
        return new SerialModuleImpl(this.f2680xfbe0c504, this.f2681x3271d0aa, this.f2682x1378447b, this.f2683x75d576dc, this.f2684x9738a56c, this.f2685x9e171bf9);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <T> void contextual(@NotNull KClass<T> kClass, @NotNull KSerializer<T> serializer) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        registerSerializer$default(this, kClass, new ContextualProvider.Argless(serializer), false, 4, null);
    }

    public final void include(@NotNull SerializersModule module) {
        Intrinsics.checkNotNullParameter(module, "module");
        module.dumpTo(this);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base, Sub extends Base> void polymorphic(@NotNull KClass<Base> baseClass, @NotNull KClass<Sub> actualClass, @NotNull KSerializer<Sub> actualSerializer) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(actualClass, "actualClass");
        Intrinsics.checkNotNullParameter(actualSerializer, "actualSerializer");
        registerPolymorphicSerializer$default(this, baseClass, actualClass, actualSerializer, false, 8, null);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in favor of function with more precise name: polymorphicDefaultDeserializer", replaceWith = @ReplaceWith(expression = "polymorphicDefaultDeserializer(baseClass, defaultDeserializerProvider)", imports = {}))
    public <Base> void polymorphicDefault(@NotNull KClass<Base> kClass, @NotNull Function1<? super String, ? extends DeserializationStrategy<? extends Base>> function1) {
        SerializersModuleCollector.DefaultImpls.polymorphicDefault(this, kClass, function1);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base> void polymorphicDefaultDeserializer(@NotNull KClass<Base> baseClass, @NotNull Function1<? super String, ? extends DeserializationStrategy<? extends Base>> defaultDeserializerProvider) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultDeserializerProvider, "defaultDeserializerProvider");
        registerDefaultPolymorphicDeserializer(baseClass, defaultDeserializerProvider, false);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base> void polymorphicDefaultSerializer(@NotNull KClass<Base> baseClass, @NotNull Function1<? super Base, ? extends SerializationStrategy<? super Base>> defaultSerializerProvider) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultSerializerProvider, "defaultSerializerProvider");
        registerDefaultPolymorphicSerializer(baseClass, defaultSerializerProvider, false);
    }

    @JvmName(name = "registerDefaultPolymorphicDeserializer")
    public final <Base> void registerDefaultPolymorphicDeserializer(@NotNull KClass<Base> baseClass, @NotNull Function1<? super String, ? extends DeserializationStrategy<? extends Base>> defaultDeserializerProvider, boolean allowOverwrite) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultDeserializerProvider, "defaultDeserializerProvider");
        HashMap hashMap = this.f2684x9738a56c;
        Function1 function1 = (Function1) hashMap.get(baseClass);
        if (function1 != null && !Intrinsics.areEqual(function1, defaultDeserializerProvider) && !allowOverwrite) {
            throw new IllegalArgumentException("Default deserializers provider for " + baseClass + " is already registered: " + function1);
        }
        hashMap.put(baseClass, defaultDeserializerProvider);
    }

    @JvmName(name = "registerDefaultPolymorphicSerializer")
    public final <Base> void registerDefaultPolymorphicSerializer(@NotNull KClass<Base> baseClass, @NotNull Function1<? super Base, ? extends SerializationStrategy<? super Base>> defaultSerializerProvider, boolean allowOverwrite) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultSerializerProvider, "defaultSerializerProvider");
        HashMap hashMap = this.f2682x1378447b;
        Function1 function1 = (Function1) hashMap.get(baseClass);
        if (function1 != null && !Intrinsics.areEqual(function1, defaultSerializerProvider) && !allowOverwrite) {
            throw new IllegalArgumentException("Default serializers provider for " + baseClass + " is already registered: " + function1);
        }
        hashMap.put(baseClass, defaultSerializerProvider);
    }

    @JvmName(name = "registerPolymorphicSerializer")
    public final <Base, Sub extends Base> void registerPolymorphicSerializer(@NotNull KClass<Base> baseClass, @NotNull KClass<Sub> concreteClass, @NotNull KSerializer<Sub> concreteSerializer, boolean allowOverwrite) {
        Object obj;
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(concreteClass, "concreteClass");
        Intrinsics.checkNotNullParameter(concreteSerializer, "concreteSerializer");
        String serialName = concreteSerializer.getDescriptor().getSerialName();
        HashMap hashMap = this.f2681x3271d0aa;
        Object obj2 = hashMap.get(baseClass);
        if (obj2 == null) {
            obj2 = new HashMap();
            hashMap.put(baseClass, obj2);
        }
        Map map = (Map) obj2;
        KSerializer kSerializer = (KSerializer) map.get(concreteClass);
        HashMap hashMap2 = this.f2683x75d576dc;
        Object obj3 = hashMap2.get(baseClass);
        if (obj3 == null) {
            obj3 = new HashMap();
            hashMap2.put(baseClass, obj3);
        }
        Map map2 = (Map) obj3;
        if (allowOverwrite) {
            if (kSerializer != null) {
                map2.remove(kSerializer.getDescriptor().getSerialName());
            }
            map.put(concreteClass, concreteSerializer);
            map2.put(serialName, concreteSerializer);
            return;
        }
        if (kSerializer != null) {
            if (Intrinsics.areEqual(kSerializer, concreteSerializer)) {
            } else {
                Intrinsics.checkNotNullParameter(baseClass, "baseClass");
                Intrinsics.checkNotNullParameter(concreteClass, "concreteClass");
                throw new C0888x306ec7c1("Serializer for " + concreteClass + " already registered in the scope of " + baseClass, 1);
            }
        }
        KSerializer kSerializer2 = (KSerializer) map2.get(serialName);
        if (kSerializer2 != null) {
            Object obj4 = hashMap.get(baseClass);
            Intrinsics.checkNotNull(obj4);
            Iterator it = AbstractC0964x2631a5ef.asSequence((Map) obj4).iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((Map.Entry) obj).getValue() == kSerializer2) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            throw new IllegalArgumentException("Multiple polymorphic serializers for base class '" + baseClass + "' have the same serial name '" + serialName + "': '" + concreteClass + "' and '" + ((Map.Entry) obj) + '\'');
        }
        map.put(concreteClass, concreteSerializer);
        map2.put(serialName, concreteSerializer);
    }

    @JvmName(name = "registerSerializer")
    public final <T> void registerSerializer(@NotNull KClass<T> forClass, @NotNull ContextualProvider provider, boolean allowOverwrite) {
        ContextualProvider contextualProvider;
        Intrinsics.checkNotNullParameter(forClass, "forClass");
        Intrinsics.checkNotNullParameter(provider, "provider");
        HashMap hashMap = this.f2680xfbe0c504;
        if (!allowOverwrite && (contextualProvider = (ContextualProvider) hashMap.get(forClass)) != null && !Intrinsics.areEqual(contextualProvider, provider)) {
            throw new C0888x306ec7c1("Contextual serializer or serializer provider for " + forClass + " already registered in this module", 1);
        }
        hashMap.put(forClass, provider);
        if (PlatformKt.isInterface(forClass)) {
            this.f2685x9e171bf9 = true;
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <T> void contextual(@NotNull KClass<T> kClass, @NotNull Function1<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> provider) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(provider, "provider");
        registerSerializer$default(this, kClass, new ContextualProvider.WithTypeArguments(provider), false, 4, null);
    }
}
