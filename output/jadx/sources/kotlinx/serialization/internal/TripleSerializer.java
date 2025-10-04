package kotlinx.serialization.internal;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0362x4440ab85;
import defpackage.C0346x75d576dc;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00050\u0004B1\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ1\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lkotlinx/serialization/internal/TripleSerializer;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "Lkotlinx/serialization/KSerializer;", "Lkotlin/Triple;", "aSerializer", "bSerializer", "cSerializer", "<init>", "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V", "Lkotlinx/serialization/encoding/Encoder;", "encoder", "value", "", "serialize", "(Lkotlinx/serialization/encoding/Encoder;Lkotlin/Triple;)V", "Lkotlinx/serialization/encoding/Decoder;", "decoder", "deserialize", "(Lkotlinx/serialization/encoding/Decoder;)Lkotlin/Triple;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@PublishedApi
/* loaded from: classes3.dex */
public final class TripleSerializer<A, B, C> implements KSerializer<Triple<? extends A, ? extends B, ? extends C>> {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final KSerializer f2650xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final KSerializer f2651x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final KSerializer f2652x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
    public final SerialDescriptor descriptor;

    public TripleSerializer(@NotNull KSerializer<A> aSerializer, @NotNull KSerializer<B> bSerializer, @NotNull KSerializer<C> cSerializer) {
        Intrinsics.checkNotNullParameter(aSerializer, "aSerializer");
        Intrinsics.checkNotNullParameter(bSerializer, "bSerializer");
        Intrinsics.checkNotNullParameter(cSerializer, "cSerializer");
        this.f2650xfbe0c504 = aSerializer;
        this.f2651x3271d0aa = bSerializer;
        this.f2652x1378447b = cSerializer;
        this.descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("kotlin.Triple", new SerialDescriptor[0], new C0346x75d576dc(this, 23));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    @NotNull
    public Triple<A, B, C> deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        CompositeDecoder beginStructure = decoder.beginStructure(getDescriptor());
        boolean decodeSequentially = beginStructure.decodeSequentially();
        KSerializer kSerializer = this.f2652x1378447b;
        KSerializer kSerializer2 = this.f2651x3271d0aa;
        KSerializer kSerializer3 = this.f2650xfbe0c504;
        if (!decodeSequentially) {
            obj = TuplesKt.f2654xfbe0c504;
            obj2 = TuplesKt.f2654xfbe0c504;
            obj3 = TuplesKt.f2654xfbe0c504;
            Object obj7 = obj2;
            Object obj8 = obj3;
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex == -1) {
                    beginStructure.endStructure(getDescriptor());
                    obj4 = TuplesKt.f2654xfbe0c504;
                    if (obj != obj4) {
                        obj5 = TuplesKt.f2654xfbe0c504;
                        if (obj7 != obj5) {
                            obj6 = TuplesKt.f2654xfbe0c504;
                            if (obj8 != obj6) {
                                return new Triple<>(obj, obj7, obj8);
                            }
                            throw new SerializationException("Element 'third' is missing");
                        }
                        throw new SerializationException("Element 'second' is missing");
                    }
                    throw new SerializationException("Element 'first' is missing");
                }
                if (decodeElementIndex == 0) {
                    obj = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(beginStructure, getDescriptor(), 0, kSerializer3, null, 8, null);
                } else if (decodeElementIndex == 1) {
                    obj7 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(beginStructure, getDescriptor(), 1, kSerializer2, null, 8, null);
                } else if (decodeElementIndex == 2) {
                    obj8 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(beginStructure, getDescriptor(), 2, kSerializer, null, 8, null);
                } else {
                    throw new SerializationException(AbstractC0362x4440ab85.m2929x9738a56c(decodeElementIndex, "Unexpected index "));
                }
            }
        } else {
            Object decodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(beginStructure, getDescriptor(), 0, kSerializer3, null, 8, null);
            Object decodeSerializableElement$default2 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(beginStructure, getDescriptor(), 1, kSerializer2, null, 8, null);
            Object decodeSerializableElement$default3 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(beginStructure, getDescriptor(), 2, kSerializer, null, 8, null);
            beginStructure.endStructure(getDescriptor());
            return new Triple<>(decodeSerializableElement$default, decodeSerializableElement$default2, decodeSerializableElement$default3);
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(@NotNull Encoder encoder, @NotNull Triple<? extends A, ? extends B, ? extends C> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        CompositeEncoder beginStructure = encoder.beginStructure(getDescriptor());
        beginStructure.encodeSerializableElement(getDescriptor(), 0, this.f2650xfbe0c504, value.getFirst());
        beginStructure.encodeSerializableElement(getDescriptor(), 1, this.f2651x3271d0aa, value.getSecond());
        beginStructure.encodeSerializableElement(getDescriptor(), 2, this.f2652x1378447b, value.getThird());
        beginStructure.endStructure(getDescriptor());
    }
}
