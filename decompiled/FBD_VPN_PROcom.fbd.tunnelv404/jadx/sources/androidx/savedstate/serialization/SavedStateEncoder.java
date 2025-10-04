package androidx.savedstate.serialization;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.AbstractC0962xa4a1ff52;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.modules.SerializersModule;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\f\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J!\u0010\u001c\u001a\u00020\u001d2\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\u0006\u0010\u001e\u001a\u00020\rH\u0002¢\u0006\u0002\u0010\u001fJ\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020\u0016H\u0016J\u0010\u0010!\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020\u001aH\u0016J\u0010\u0010&\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020+H\u0016J\u0010\u0010,\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020-H\u0016J\u0010\u0010.\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u00101\u001a\u00020\u001dH\u0016J\u0016\u00102\u001a\u00020\u001d2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u001a03H\u0002J\u0016\u00104\u001a\u00020\u001d2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r03H\u0002J\u0010\u00105\u001a\u00020\u001d2\u0006\u0010\f\u001a\u000206H\u0002J\u0010\u00107\u001a\u00020\u001d2\u0006\u0010\f\u001a\u000208H\u0002J\u0010\u00109\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020:H\u0002J\u0010\u0010;\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020<H\u0002J\u0010\u0010=\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020>H\u0002J\u0010\u0010?\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020@H\u0002J\u001b\u0010A\u001a\u00020\u001d2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0BH\u0002¢\u0006\u0002\u0010CJ\u0010\u0010D\u001a\u00020E2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J)\u0010F\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\u0002¢\u0006\u0002\u0010GJ)\u0010H\u001a\u00020\u001d\"\u0004\b\u0000\u0010I2\f\u0010J\u001a\b\u0012\u0004\u0012\u0002HI0K2\u0006\u0010\f\u001a\u0002HIH\u0016¢\u0006\u0002\u0010LJ)\u0010M\u001a\u00020\u0016\"\u0004\b\u0000\u0010I2\f\u0010J\u001a\b\u0012\u0004\u0012\u0002HI0K2\u0006\u0010\f\u001a\u0002HIH\u0002¢\u0006\u0002\u0010NR\u001a\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0080\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006O"}, d2 = {"Landroidx/savedstate/serialization/SavedStateEncoder;", "Lkotlinx/serialization/encoding/AbstractEncoder;", "savedState", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "configuration", "Landroidx/savedstate/serialization/SavedStateConfiguration;", "<init>", "(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V", "getSavedState$savedstate_release", "()Landroid/os/Bundle;", "Landroid/os/Bundle;", "value", "", "key", "getKey$savedstate_release", "()Ljava/lang/String;", "serializersModule", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "shouldEncodeElementDefault", "", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "index", "", "encodeElement", "checkDiscriminatorCollisions", "", "elementName", "(Landroid/os/Bundle;Ljava/lang/String;)V", "encodeBoolean", "encodeByte", "", "encodeShort", "", "encodeInt", "encodeLong", "", "encodeFloat", "", "encodeDouble", "", "encodeChar", "", "encodeString", "encodeEnum", "enumDescriptor", "encodeNull", "encodeIntList", "", "encodeStringList", "encodeBooleanArray", "", "encodeCharArray", "", "encodeDoubleArray", "", "encodeFloatArray", "", "encodeIntArray", "", "encodeLongArray", "", "encodeStringArray", "", "([Ljava/lang/String;)V", "beginStructure", "Lkotlinx/serialization/encoding/CompositeEncoder;", "putClassDiscriminatorIfRequired", "(Landroidx/savedstate/serialization/SavedStateConfiguration;Lkotlinx/serialization/descriptors/SerialDescriptor;Landroid/os/Bundle;)V", "encodeSerializableValue", ExifInterface.GPS_DIRECTION_TRUE, "serializer", "Lkotlinx/serialization/SerializationStrategy;", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeFormatSpecificTypes", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Z", "savedstate_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSavedStateEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateEncoder.kt\nandroidx/savedstate/serialization/SavedStateEncoder\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 3 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,281:1\n90#2:282\n90#2:283\n106#2:284\n106#2:285\n106#2:286\n106#2:287\n106#2:288\n106#2:289\n106#2:290\n106#2:291\n106#2:292\n106#2:293\n106#2:294\n106#2:295\n106#2:296\n106#2:297\n106#2:298\n106#2:299\n106#2:300\n106#2:301\n106#2:302\n106#2:303\n106#2:324\n106#2:326\n90#2:327\n106#2:328\n27#3:304\n46#3:305\n32#3,4:306\n31#3,7:316\n126#4:310\n153#4,3:311\n37#5,2:314\n1#6:323\n46#7:325\n*S KotlinDebug\n*F\n+ 1 SavedStateEncoder.kt\nandroidx/savedstate/serialization/SavedStateEncoder\n*L\n108#1:282\n111#1:283\n122#1:284\n126#1:285\n130#1:286\n134#1:287\n138#1:288\n142#1:289\n146#1:290\n150#1:291\n154#1:292\n158#1:293\n162#1:294\n166#1:295\n170#1:296\n174#1:297\n178#1:298\n182#1:299\n186#1:300\n190#1:301\n194#1:302\n198#1:303\n211#1:324\n212#1:326\n229#1:327\n234#1:328\n211#1:304\n211#1:305\n211#1:306,4\n211#1:316,7\n211#1:310\n211#1:311,3\n211#1:314,2\n211#1:323\n211#1:325\n*E\n"})
/* loaded from: classes.dex */
public final class SavedStateEncoder extends AbstractEncoder {

    @NotNull
    private final SavedStateConfiguration configuration;

    @NotNull
    private String key;

    @NotNull
    private final Bundle savedState;

    @NotNull
    private final SerializersModule serializersModule;

    public SavedStateEncoder(@NotNull Bundle savedState, @NotNull SavedStateConfiguration configuration) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.savedState = savedState;
        this.configuration = configuration;
        this.key = "";
        this.serializersModule = configuration.getSerializersModule();
    }

    private final void checkDiscriminatorCollisions(Bundle savedState, String elementName) {
        if (this.configuration.getClassDiscriminatorMode() == 1) {
            boolean m685containsimpl = SavedStateReader.m685containsimpl(SavedStateReader.m684constructorimpl(savedState), ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
            boolean areEqual = Intrinsics.areEqual(elementName, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
            if (m685containsimpl && areEqual) {
                throw new IllegalArgumentException("SavedStateEncoder for " + SavedStateReader.m755getStringimpl(SavedStateReader.m684constructorimpl(savedState), ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY) + " has property '" + elementName + "' that conflicts with the class discriminator. You can rename a property with @SerialName annotation.");
            }
        }
    }

    private final void encodeBooleanArray(boolean[] value) {
        SavedStateWriter.m778putBooleanArrayimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    private final void encodeCharArray(char[] value) {
        SavedStateWriter.m780putCharArrayimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    private final void encodeDoubleArray(double[] value) {
        SavedStateWriter.m785putDoubleArrayimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    private final void encodeFloatArray(float[] value) {
        SavedStateWriter.m787putFloatArrayimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T> boolean encodeFormatSpecificTypes(SerializationStrategy<? super T> serializer, T value) {
        if (!SavedStateEncoder_androidKt.encodeFormatSpecificTypesOnPlatform(this, serializer, value)) {
            SerialDescriptor descriptor = serializer.getDescriptor();
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getIntListDescriptor())) {
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Int>");
                encodeIntList((List) value);
                return true;
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getStringListDescriptor())) {
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>");
                encodeStringList((List) value);
                return true;
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getBooleanArrayDescriptor())) {
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.BooleanArray");
                encodeBooleanArray((boolean[]) value);
                return true;
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getCharArrayDescriptor())) {
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.CharArray");
                encodeCharArray((char[]) value);
                return true;
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getDoubleArrayDescriptor())) {
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.DoubleArray");
                encodeDoubleArray((double[]) value);
                return true;
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getFloatArrayDescriptor())) {
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.FloatArray");
                encodeFloatArray((float[]) value);
                return true;
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getIntArrayDescriptor())) {
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.IntArray");
                encodeIntArray((int[]) value);
                return true;
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getLongArrayDescriptor())) {
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.LongArray");
                encodeLongArray((long[]) value);
                return true;
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getStringArrayDescriptor())) {
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                encodeStringArray((String[]) value);
                return true;
            }
            return false;
        }
        return true;
    }

    private final void encodeIntArray(int[] value) {
        SavedStateWriter.m789putIntArrayimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    private final void encodeIntList(List<Integer> value) {
        SavedStateWriter.m790putIntListimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    private final void encodeLongArray(long[] value) {
        SavedStateWriter.m793putLongArrayimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    private final void encodeStringArray(String[] value) {
        SavedStateWriter.m805putStringArrayimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    private final void encodeStringList(List<String> value) {
        SavedStateWriter.m806putStringListimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    private final void putClassDiscriminatorIfRequired(SavedStateConfiguration configuration, SerialDescriptor descriptor, Bundle savedState) {
        if (configuration.getClassDiscriminatorMode() != 1 || SavedStateReader.m685containsimpl(SavedStateReader.m684constructorimpl(savedState), ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)) {
            return;
        }
        if (Intrinsics.areEqual(descriptor.getKind(), StructureKind.CLASS.INSTANCE) || Intrinsics.areEqual(descriptor.getKind(), StructureKind.OBJECT.INSTANCE)) {
            SavedStateWriter.m804putStringimpl(SavedStateWriter.m771constructorimpl(savedState), ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, descriptor.getSerialName());
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    @NotNull
    public CompositeEncoder beginStructure(@NotNull SerialDescriptor descriptor) {
        Pair[] pairArr;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (Intrinsics.areEqual(this.key, "")) {
            putClassDiscriminatorIfRequired(this.configuration, descriptor, this.savedState);
            return this;
        }
        Map emptyMap = AbstractC0962xa4a1ff52.emptyMap();
        if (emptyMap.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(emptyMap.size());
            for (Map.Entry entry : emptyMap.entrySet()) {
                arrayList.add(TuplesKt.to((String) entry.getKey(), entry.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        SavedStateWriter.m771constructorimpl(bundleOf);
        SavedStateWriter.m798putSavedStateimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, bundleOf);
        putClassDiscriminatorIfRequired(this.configuration, descriptor, bundleOf);
        return new SavedStateEncoder(bundleOf, this.configuration);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeBoolean(boolean value) {
        SavedStateWriter.m777putBooleanimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeByte(byte value) {
        SavedStateWriter.m788putIntimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeChar(char value) {
        SavedStateWriter.m779putCharimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeDouble(double value) {
        SavedStateWriter.m784putDoubleimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder
    public boolean encodeElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        String elementName = descriptor.getElementName(index);
        this.key = elementName;
        checkDiscriminatorCollisions(this.savedState, elementName);
        return true;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeEnum(@NotNull SerialDescriptor enumDescriptor, int index) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        SavedStateWriter.m788putIntimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, index);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeFloat(float value) {
        SavedStateWriter.m786putFloatimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeInt(int value) {
        SavedStateWriter.m788putIntimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeLong(long value) {
        SavedStateWriter.m792putLongimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        SavedStateWriter.m794putNullimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public <T> void encodeSerializableValue(@NotNull SerializationStrategy<? super T> serializer, T value) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (!encodeFormatSpecificTypes(serializer, value)) {
            super.encodeSerializableValue(serializer, value);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeShort(short value) {
        SavedStateWriter.m788putIntimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeString(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        SavedStateWriter.m804putStringimpl(SavedStateWriter.m771constructorimpl(this.savedState), this.key, value);
    }

    @NotNull
    /* renamed from: getKey$savedstate_release, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    @NotNull
    /* renamed from: getSavedState$savedstate_release, reason: from getter */
    public final Bundle getSavedState() {
        return this.savedState;
    }

    @Override // kotlinx.serialization.encoding.Encoder, kotlinx.serialization.encoding.CompositeEncoder
    @NotNull
    public SerializersModule getSerializersModule() {
        return this.serializersModule;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public boolean shouldEncodeElementDefault(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this.configuration.getEncodeDefaults();
    }
}
